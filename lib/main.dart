import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme/app_theme.dart';
import 'services/settings_service.dart';
import 'screens/intro_screen.dart';
import 'screens/home_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/all_tools_screen.dart';
import 'screens/placeholder_tool_screen.dart';
// ─── Implemented tool screens ───────────────────────────────────────────────
// As you implement each tool, import it here and add route below.
// For now all tools show PlaceholderToolScreen until implemented.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Lock to portrait
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // Status bar style
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    navigationBarColor: Color(0xFF0A0A0F),
    navigationBarIconBrightness: Brightness.light,
  ));
  // Init settings
  await SettingsService().init();
  runApp(const TuniyaToolsApp());
}
class TuniyaToolsApp extends StatelessWidget {
  const TuniyaToolsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUNIYA TOOLS',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: '/',
      onGenerateRoute: _generateRoute,
    );
  }
  Route<dynamic>? _generateRoute(RouteSettings settings) {
    final name = settings.name ?? '/';
    // Core screens
    switch (name) {
      case '/':
        return _route(const IntroScreen());
      case '/home':
        return _route(const HomeScreen());
      case '/settings':
        return _route(const SettingsScreen());
      case '/all-tools':
        return _route(const AllToolsScreen());
    }
    // All tool routes — extract tool id from route name (e.g. '/text-to-pdf' → 'text_to_pdf')
    // Map route names to tool IDs
    final toolRouteMap = <String, String>{
      '/text-to-pdf': 'text_to_pdf',
      '/pdf-to-text': 'pdf_to_text',
      '/image-to-pdf': 'image_to_pdf',
      '/pdf-to-images': 'pdf_to_images',
      '/folder-to-zip': 'folder_to_zip',
      '/folder-to-jar': 'folder_to_jar',
      '/zip-extract': 'zip_extract',
      '/jar-extract': 'jar_extract',
      '/file-rename-batch': 'file_rename_batch',
      '/pdf-password': 'pdf_password',
      '/zip-password': 'zip_password',
      '/file-password': 'file_password',
      '/zip-compressor': 'zip_compressor',
      '/file-info': 'file_info',
      '/link-generator': 'link_generator',
      '/pdf-merger': 'pdf_merger',
      '/pdf-splitter': 'pdf_splitter',
      '/pdf-watermark': 'pdf_watermark',
      '/pdf-rotate': 'pdf_rotate',
      '/excel-to-pdf': 'excel_to_pdf',
      '/find-replace': 'find_replace',
      '/case-converter': 'case_converter',
      '/word-counter': 'word_counter',
      '/base64': 'base64',
      '/lorem-ipsum': 'lorem_ipsum',
      '/morse-code': 'morse_code',
      '/list-sort': 'list_sort',
      '/upside-down': 'upside_down_text',
      '/sql-formatter': 'sql_formatter',
      '/regex-tester': 'regex_tester',
      '/word-cloud': 'word_cloud',
      '/html-to-md': 'html_to_markdown',
      '/media-converter': 'media_converter',
      '/noise-remover': 'noise_remover',
      '/volume-booster': 'volume_booster',
      '/bass-booster': 'bass_booster',
      '/slowed-reverb': 'slowed_reverb',
      '/video-compressor': 'video_compressor',
      '/image-editor': 'image_editor',
      '/image-upscaler': 'image_upscaler',
      '/image-expand': 'image_expand',
      '/video-to-gif': 'video_to_gif',
      '/audio-joiner': 'audio_joiner',
      '/bg-remover': 'bg_remover',
      '/video-frame': 'video_frame',
      '/batch-video-mp3': 'batch_video_to_mp3',
      '/color-palette': 'color_palette',
      '/metadata-stripper': 'metadata_stripper',
      '/batch-image-compress': 'batch_image_compressor',
      '/bulk-image-resize': 'bulk_image_resizer',
      '/gif-maker': 'gif_maker',
      '/circular-crop': 'circular_crop',
      '/collage-maker': 'collage_maker',
      '/meme-gen': 'meme_generator',
      '/insta-grid': 'instagram_grid',
      '/blur-bg': 'blur_bg',
      '/ocr': 'ocr_tool',
      '/mp3-autotagger': 'mp3_autotagger',
      '/yt-downloader': 'yt_downloader',
      '/fb-downloader': 'fb_downloader',
      '/twitter-downloader': 'twitter_downloader',
      '/wa-status': 'wa_status',
      '/insta-downloader': 'insta_downloader',
      '/terabox-downloader': 'terabox_downloader',
      '/pinterest-downloader': 'pinterest_downloader',
      '/telegram-downloader': 'telegram_downloader',
      '/ai-chat': 'ai_chat',
      '/ai-text-writer': 'ai_text_writer',
      '/ai-image-gen': 'ai_image_gen',
      '/ai-code-helper': 'ai_code_helper',
      '/ai-audio-transcribe': 'ai_audio_transcribe',
      '/ai-pdf-summarizer': 'ai_pdf_summarizer',
      '/ai-translator': 'ai_translator',
      '/yt-analyzer': 'yt_analyzer',
      '/ai-fix-anything': 'ai_fix_anything',
      '/voice-assistant': 'voice_assistant',
      '/gender-change': 'gender_change',
      '/ai-resume': 'ai_resume',
      '/ai-grammar': 'ai_grammar',
      '/image-to-prompt': 'image_to_prompt',
      '/ai-social-bio': 'ai_social_bio',
      '/ai-keyword-gen': 'ai_keyword_gen',
      '/image-to-recipe': 'image_to_recipe',
      '/ai-website-builder': 'ai_website_builder',
      '/ai-doc-translator': 'ai_doc_translator',
      '/git-helper': 'git_helper',
      '/api-doc-gen': 'api_doc_gen',
      '/ai-lyrics': 'ai_lyrics_writer',
      '/ai-object-remover': 'ai_object_remover',
      '/python-editor': 'python_editor',
      '/java-editor': 'java_editor',
      '/cpp-editor': 'cpp_editor',
      '/js-editor': 'js_editor',
      '/html-editor': 'html_editor',
      '/php-editor': 'php_editor',
      '/kotlin-editor': 'kotlin_editor',
      '/shell-editor': 'shell_editor',
      '/json-editor': 'json_editor',
      '/xml-editor': 'xml_editor',
      '/hash-gen': 'hash_gen',
      '/device-info': 'device_info',
      '/jwt-debugger': 'jwt_debugger',
      '/color-contrast': 'color_contrast',
      '/cron-gen': 'cron_gen',
      '/webhook-tester': 'webhook_tester',
      '/csv-json': 'csv_json',
      '/base-converter': 'base_converter',
      '/aes-encrypt': 'aes_encrypt',
      '/deep-link': 'deep_link_tester',
      '/steganography': 'steganography',
      '/color-picker': 'color_picker',
      '/password-gen': 'password_gen',
      '/password-meter': 'password_meter',
      '/apk-extractor': 'apk_extractor',
      '/disposable-email': 'disposable_email',
      '/percent-calc': 'percentage_calc',
      '/sci-calculator': 'sci_calculator',
      '/dns-lookup': 'dns_lookup',
      '/port-scanner': 'port_scanner',
      '/ping-test': 'ping_test',
      '/whois': 'whois_lookup',
      '/ssl-checker': 'ssl_checker',
      '/ip-finder': 'ip_finder',
      '/speed-test': 'speed_test',
      '/mac-lookup': 'mac_lookup',
      '/redirect-checker': 'redirect_checker',
      '/web-to-pdf': 'web_to_pdf',
      '/proxy-checker': 'proxy_checker',
      '/storage-analyzer': 'storage_analyzer',
      '/junk-cleaner': 'junk_cleaner',
      '/battery-info': 'battery_info',
      '/sensor-feed': 'sensor_feed',
      '/sound-meter': 'sound_meter',
      '/compass': 'compass',
      '/secure-notes': 'secure_notes',
      '/invisible-vault': 'invisible_vault',
      '/file-shredder': 'file_shredder',
      '/wifi-qr': 'wifi_qr',
      '/fake-call': 'fake_call',
      '/sos-flashlight': 'sos_flashlight',
      '/anti-theft': 'anti_theft',
      '/qr-suite': 'qr_suite',
      '/unit-converter': 'unit_converter',
      '/link-vault': 'link_vault',
      '/temp-notes': 'temp_notes',
      '/direct-wa': 'direct_whatsapp',
      '/vcard-gen': 'vcard_gen',
      '/auto-typer': 'auto_typer',
      '/download-manager': 'download_manager',
      '/reverse-image': 'reverse_image',
      '/bmi': 'bmi_calculator',
      '/age-calc': 'age_calculator',
      '/world-clock': 'world_clock',
      '/medicine-reminder': 'medicine_reminder',
      '/rto-checker': 'rto_checker',
      '/emi-calc': 'emi_calculator',
      '/gst-calc': 'gst_calculator',
      '/invoice-gen': 'invoice_gen',
      '/crypto-tracker': 'crypto_tracker',
      '/secret-vault': 'secret_vault',
      '/reel-toolkit': 'reel_toolkit',
      '/ai-workflow': 'ai_workflow',
      '/smart-workspace': 'smart_workspace',
      '/share-kit': 'share_kit',
      '/scan-to-pdf': 'scan_to_pdf',
      '/universal-opener': 'universal_opener',
      '/app-lock': 'app_lock',
      '/favicon-downloader': 'favicon_downloader',
      '/source-viewer': 'source_viewer',
      '/graph-plotter': 'graph_plotter',
      '/robots-finder': 'robots_finder',
      '/dominant-color': 'dominant_color',
    };
    if (toolRouteMap.containsKey(name)) {
      final toolId = toolRouteMap[name]!;
      // TODO: Replace PlaceholderToolScreen with actual screen as you implement each tool
      // Example: case '/text-to-pdf': return _route(TextToPdfScreen());
      return _route(PlaceholderToolScreen(toolId: toolId));
    }
    // 404 fallback
    return _route(const HomeScreen());
  }

  PageRoute _route(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.05, 0),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 250),
    );
  }
}
