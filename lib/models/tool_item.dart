import 'package:flutter/material.dart';

enum ToolCategory {
  file, text, media, downloader, ai, codeEditor,
  developer, utility, networking, system, business, lifestyle,
}
class ToolItem {
  final String id;
  final String name;
  final String description;
  final IconData icon;
  final ToolCategory category;
  final String routeName;
  final bool needsGemini;
  final bool needsClaude;
  final bool isOffline;
  const ToolItem({
    required this.id, required this.name, required this.description,
    required this.icon, required this.category, required this.routeName,
    this.needsGemini = false, this.needsClaude = false, this.isOffline = true,
  });
}

class ToolsData {
  static const List<ToolItem> all = [
    // ══════════════════════════════════════════
    // FILE TOOLS
    ToolItem(id:'text_to_pdf', name:'Text to PDF', description:'Text file ya typed text ko PDF banao', icon:Icons.picture_as_pdf_outlined, category:ToolCategory.file, routeName:'/text-to-pdf'),
    ToolItem(id:'pdf_to_text', name:'PDF to Text', description:'PDF ka text extract karo', icon:Icons.text_snippet_outlined, category:ToolCategory.file, routeName:'/pdf-to-text'),
    ToolItem(id:'image_to_pdf', name:'Image to PDF', description:'Multiple images ko PDF mein convert karo', icon:Icons.image_outlined, category:ToolCategory.file, routeName:'/image-to-pdf'),
    ToolItem(id:'pdf_to_images', name:'PDF to Images', description:'PDF ke har page ko image banao', icon:Icons.burst_mode_outlined, category:ToolCategory.file, routeName:'/pdf-to-images'),
    ToolItem(id:'folder_to_zip', name:'Folder to ZIP', description:'Poora folder ZIP mein pack karo', icon:Icons.folder_zip_outlined, category:ToolCategory.file, routeName:'/folder-to-zip'),
    ToolItem(id:'folder_to_jar', name:'Folder to JAR', description:'Poora folder JAR file mein pack karo', icon:Icons.inventory_2_outlined, category:ToolCategory.file, routeName:'/folder-to-jar'),
    ToolItem(id:'zip_extract', name:'ZIP Extract', description:'ZIP file extract karo kisi bhi folder mein', icon:Icons.unarchive_outlined, category:ToolCategory.file, routeName:'/zip-extract'),
    ToolItem(id:'jar_extract', name:'JAR Extract', description:'JAR file extract karo kisi bhi folder mein', icon:Icons.open_in_new_outlined, category:ToolCategory.file, routeName:'/jar-extract'),
    ToolItem(id:'file_rename_batch', name:'Batch Rename', description:'Multiple files ek saath rename karo', icon:Icons.drive_file_rename_outline, category:ToolCategory.file, routeName:'/file-rename-batch'),
    ToolItem(id:'pdf_password', name:'PDF Password', description:'PDF pe password lagao ya hatao', icon:Icons.lock_outline, category:ToolCategory.file, routeName:'/pdf-password'),
    ToolItem(id:'zip_password', name:'ZIP/JAR Password', description:'ZIP ya JAR pe password lagao ya hatao', icon:Icons.security_outlined, category:ToolCategory.file, routeName:'/zip-password'),
    ToolItem(id:'file_password', name:'File Encrypt', description:'Audio/Video file ko password se encrypt karo', icon:Icons.enhanced_encryption_outlined, category:ToolCategory.file, routeName:'/file-password'),
    ToolItem(id:'zip_compressor', name:'ZIP Compressor', description:'5 levels: No / Fastest / Normal / Ultra / Max', icon:Icons.compress_outlined, category:ToolCategory.file, routeName:'/zip-compressor'),
    ToolItem(id:'file_info', name:'File Info Viewer', description:'File ki puri jankari: size, codec, bitrate sab', icon:Icons.info_outline, category:ToolCategory.file, routeName:'/file-info'),
    ToolItem(id:'link_generator', name:'Link Generator', description:'File upload karo, download link + expiry milegi', icon:Icons.link_outlined, category:ToolCategory.file, routeName:'/link-generator', isOffline:false),
    ToolItem(id:'pdf_merger', name:'PDF Merger', description:'Multiple PDFs ko ek mein merge karo', icon:Icons.merge_outlined, category:ToolCategory.file, routeName:'/pdf-merger'),
    ToolItem(id:'pdf_splitter', name:'PDF Splitter', description:'PDF ke pages alag alag karo', icon:Icons.call_split_outlined, category:ToolCategory.file, routeName:'/pdf-splitter'),
    ToolItem(id:'pdf_watermark', name:'PDF Watermark', description:'PDF par custom text/logo watermark lagao', icon:Icons.branding_watermark_outlined, category:ToolCategory.file, routeName:'/pdf-watermark'),
    ToolItem(id:'pdf_rotate', name:'PDF Rotate', description:'PDF pages rotate karo agar scan galat ho gaya', icon:Icons.rotate_right_outlined, category:ToolCategory.file, routeName:'/pdf-rotate'),
    ToolItem(id:'excel_to_pdf', name:'Excel to PDF', description:'Spreadsheet files ko PDF mein convert karo', icon:Icons.table_chart_outlined, category:ToolCategory.file, routeName:'/excel-to-pdf'),
    // TEXT TOOLS
    ToolItem(id:'find_replace', name:'Find & Replace', description:'File mein word dhundho aur replace karo', icon:Icons.find_replace_outlined, category:ToolCategory.text, routeName:'/find-replace'),
    ToolItem(id:'case_converter', name:'Case Converter', description:'UPPER / lower / Title / Sentence case', icon:Icons.text_fields_outlined, category:ToolCategory.text, routeName:'/case-converter'),
    ToolItem(id:'word_counter', name:'Word Counter', description:'Real-time character/word/line counting', icon:Icons.format_list_numbered_outlined, category:ToolCategory.text, routeName:'/word-counter'),
    ToolItem(id:'base64', name:'Base64 Encoder', description:'Text/File ko Base64 mein encode/decode karo', icon:Icons.code_outlined, category:ToolCategory.text, routeName:'/base64'),
    ToolItem(id:'lorem_ipsum', name:'Lorem Ipsum Gen', description:'Designers ke liye dummy text generate karo', icon:Icons.notes_outlined, category:ToolCategory.text, routeName:'/lorem-ipsum'),
    ToolItem(id:'morse_code', name:'Morse Code', description:'Text to Morse aur Morse to Text', icon:Icons.radio_outlined, category:ToolCategory.text, routeName:'/morse-code'),
    ToolItem(id:'list_sort', name:'List Alphabetizer', description:'Kisi bhi list ko A-Z sort karo', icon:Icons.sort_outlined, category:ToolCategory.text, routeName:'/list-sort'),
    ToolItem(id:'upside_down_text', name:'Upside Down Text', description:'Text ulta karo social media pe maze ke liye', icon:Icons.flip_outlined, category:ToolCategory.text, routeName:'/upside-down'),
    ToolItem(id:'sql_formatter', name:'SQL Formatter', description:'Raw SQL queries ko beautify karo', icon:Icons.storage_outlined, category:ToolCategory.text, routeName:'/sql-formatter'),
    ToolItem(id:'regex_tester', name:'Regex Tester', description:'Regular expressions test karo', icon:Icons.search_outlined, category:ToolCategory.text, routeName:'/regex-tester'),
    ToolItem(id:'word_cloud', name:'Word Cloud', description:'Text se visual word cloud art banao', icon:Icons.cloud_outlined, category:ToolCategory.text, routeName:'/word-cloud'),
    ToolItem(id:'html_to_markdown', name:'HTML to Markdown', description:'Web content ko markdown format mein convert karo', icon:Icons.transform_outlined, category:ToolCategory.text, routeName:'/html-to-md'),
    // MEDIA TOOLS
    ToolItem(id:'media_converter', name:'Media Converter', description:'MP1/MP2/MP3/MP4 koi bhi format mein convert', icon:Icons.swap_horiz_outlined, category:ToolCategory.media, routeName:'/media-converter'),
    ToolItem(id:'noise_remover', name:'Noise Remover', description:'Audio se background noise hatao', icon:Icons.noise_control_off_outlined, category:ToolCategory.media, routeName:'/noise-remover'),
    ToolItem(id:'volume_booster', name:'Volume Booster', description:'Audio ki volume badhao', icon:Icons.volume_up_outlined, category:ToolCategory.media, routeName:'/volume-booster'),
    ToolItem(id:'bass_booster', name:'Bass Booster', description:'Audio mein bass badhao', icon:Icons.graphic_eq_outlined, category:ToolCategory.media, routeName:'/bass-booster'),
    ToolItem(id:'slowed_reverb', name:'Slowed + Reverb', description:'Audio slow karo + reverb add karo', icon:Icons.blur_on_outlined, category:ToolCategory.media, routeName:'/slowed-reverb'),
    ToolItem(id:'video_compressor', name:'Video Compressor', description:'Video compress karo: 144p to 4K quality', icon:Icons.video_settings_outlined, category:ToolCategory.media, routeName:'/video-compressor'),
    ToolItem(id:'image_editor', name:'Image Editor', description:'Crop, Rotate, Filters, Text, Watermark aur zyada', icon:Icons.photo_filter_outlined, category:ToolCategory.media, routeName:'/image-editor'),
    ToolItem(id:'image_upscaler', name:'Image Upscaler', description:'AI se quality badhao: 2x / 4x / 8x', icon:Icons.hd_outlined, category:ToolCategory.media, routeName:'/image-upscaler', needsGemini:true, isOffline:false),
    ToolItem(id:'image_expand', name:'Image Expand', description:'AI se borders badhao, generative fill', icon:Icons.expand_outlined, category:ToolCategory.media, routeName:'/image-expand', needsGemini:true, isOffline:false),
    ToolItem(id:'video_to_gif', name:'Video to GIF', description:'MP4 ko high-quality GIF mein convert karo', icon:Icons.gif_box_outlined, category:ToolCategory.media, routeName:'/video-to-gif'),
    ToolItem(id:'audio_joiner', name:'Audio Joiner', description:'Do ya teen audio files ko ek mein merge karo', icon:Icons.merge_outlined, category:ToolCategory.media, routeName:'/audio-joiner'),
    ToolItem(id:'bg_remover', name:'Background Remover', description:'AI se image ka background remove karo', icon:Icons.auto_fix_high_outlined, category:ToolCategory.media, routeName:'/bg-remover', needsGemini:true, isOffline:false),
    ToolItem(id:'video_frame', name:'Video Frame Capture', description:'Video se high-quality screenshots extract karo', icon:Icons.photo_camera_outlined, category:ToolCategory.media, routeName:'/video-frame'),
    ToolItem(id:'batch_video_to_mp3', name:'Batch Video to MP3', description:'Ek saath 10-20 videos ko MP3 mein convert karo', icon:Icons.queue_music_outlined, category:ToolCategory.media, routeName:'/batch-video-mp3'),
    ToolItem(id:'color_palette', name:'Color Palette', description:'Image se hex color codes extract karo', icon:Icons.palette_outlined, category:ToolCategory.media, routeName:'/color-palette'),
    ToolItem(id:'metadata_stripper', name:'Metadata Stripper', description:'Images/videos se GPS/Camera info delete karo', icon:Icons.no_photography_outlined, category:ToolCategory.media, routeName:'/metadata-stripper'),
    ToolItem(id:'batch_image_compressor', name:'Batch Image Compress', description:'50+ images ka size ek click mein kam karo', icon:Icons.photo_size_select_small_outlined, category:ToolCategory.media, routeName:'/batch-image-compress'),
    ToolItem(id:'bulk_image_resizer', name:'Bulk Image Resizer', description:'Folder ki saari images ek saath resize karo', icon:Icons.aspect_ratio_outlined, category:ToolCategory.media, routeName:'/bulk-image-resize'),
    ToolItem(id:'gif_maker', name:'GIF Maker', description:'Video ya multiple images se GIF banao', icon:Icons.animation_outlined, category:ToolCategory.media, routeName:'/gif-maker'),
    ToolItem(id:'circular_crop', name:'Circular Crop', description:'Profile picture ke liye circle mein crop karo', icon:Icons.radio_button_checked_outlined, category:ToolCategory.media, routeName:'/circular-crop'),
    ToolItem(id:'collage_maker', name:'Photo Collage', description:'2-4 images ko ek frame mein set karo', icon:Icons.grid_on_outlined, category:ToolCategory.media, routeName:'/collage-maker'),
    ToolItem(id:'meme_generator', name:'Meme Generator', description:'Popular templates par text daal kar memes banao', icon:Icons.sentiment_very_satisfied_outlined, category:ToolCategory.media, routeName:'/meme-gen'),
    ToolItem(id:'instagram_grid', name:'Instagram Grid Maker', description:'Photo ko 3x3 grids mein kato Instagram ke liye', icon:Icons.grid_view_outlined, category:ToolCategory.media, routeName:'/insta-grid'),
    ToolItem(id:'blur_bg', name:'Blur Background', description:'AI se background ko DSLR jaisa blur karo', icon:Icons.blur_circular_outlined, category:ToolCategory.media, routeName:'/blur-bg', needsGemini:true, isOffline:false),
    ToolItem(id:'ocr_tool', name:'OCR - Image to Text', description:'Image par likha text copy karke nikalo', icon:Icons.document_scanner_outlined, category:ToolCategory.media, routeName:'/ocr', needsGemini:true, isOffline:false),
    // DOWNLOADER TOOLS
    ToolItem(id:'yt_downloader', name:'YouTube Downloader', description:'Video (144p-4K) + Audio MP3 download', icon:Icons.play_circle_outline, category:ToolCategory.downloader, routeName:'/yt-downloader', isOffline:false),
    ToolItem(id:'fb_downloader', name:'Facebook Downloader', description:'Facebook Video + Audio download', icon:Icons.facebook_outlined, category:ToolCategory.downloader, routeName:'/fb-downloader', isOffline:false),
    ToolItem(id:'twitter_downloader', name:'Twitter/X Downloader', description:'Twitter/X Video + Audio download', icon:Icons.alternate_email_outlined, category:ToolCategory.downloader, routeName:'/twitter-downloader', isOffline:false),
    ToolItem(id:'wa_status', name:'WhatsApp Status Saver', description:'Status video + audio save karo', icon:Icons.chat_outlined, category:ToolCategory.downloader, routeName:'/wa-status'),
    ToolItem(id:'insta_downloader', name:'Instagram Downloader', description:'Video / Reels / Stories + Audio download', icon:Icons.camera_alt_outlined, category:ToolCategory.downloader, routeName:'/insta-downloader', isOffline:false),
    ToolItem(id:'terabox_downloader', name:'Terabox Downloader', description:'Terabox link se file download karo', icon:Icons.cloud_download_outlined, category:ToolCategory.downloader, routeName:'/terabox-downloader', isOffline:false),
    ToolItem(id:'pinterest_downloader', name:'Pinterest Downloader', description:'Video / Image / Audio download', icon:Icons.interests_outlined, category:ToolCategory.downloader, routeName:'/pinterest-downloader', isOffline:false),
    ToolItem(id:'telegram_downloader', name:'Telegram Downloader', description:'Telegram link se file/video/audio download', icon:Icons.send_outlined, category:ToolCategory.downloader, routeName:'/telegram-downloader', isOffline:false),
    // AI TOOLS
    ToolItem(id:'ai_chat', name:'AI Chat', description:'Koi bhi sawaal poochho - Gemini Flash', icon:Icons.chat_bubble_outline, category:ToolCategory.ai, routeName:'/ai-chat', needsGemini:true, isOffline:false),
    ToolItem(id:'ai_text_writer', name:'AI Text Writer', description:'Content / Essay / Story / Blog generate karo', icon:Icons.edit_note_outlined, category:ToolCategory.ai, routeName:'/ai-text-writer', needsClaude:true, isOffline:false),
    ToolItem(id:'ai_image_gen', name:'AI Image Generator', description:'Text likho, image generate hogi - Gemini', icon:Icons.auto_awesome_outlined, category:ToolCategory.ai, routeName:'/ai-image-gen', needsGemini:true, isOffline:false),
    ToolItem(id:'ai_code_helper', name:'AI Code Helper', description:'Code explain / fix / generate karo - Claude', icon:Icons.terminal_outlined, category:ToolCategory.ai, routeName:'/ai-code-helper', needsClaude:true, isOffline:false),
    ToolItem(id:'ai_audio_transcribe', name:'AI Audio Transcribe', description:'Audio file do, text mil jaayega - Claude', icon:Icons.mic_outlined, category:ToolCategory.ai, routeName:'/ai-audio-transcribe', needsClaude:true, isOffline:false),
    ToolItem(id:'ai_pdf_summarizer', name:'AI PDF Summarizer', description:'PDF upload karo, summary milegi - Claude', icon:Icons.summarize_outlined, category:ToolCategory.ai, routeName:'/ai-pdf-summarizer', needsClaude:true, isOffline:false),
    ToolItem(id:'ai_translator', name:'AI Translator', description:'Koi bhi language mein translate karo', icon:Icons.translate_outlined, category:ToolCategory.ai, routeName:'/ai-translator', needsClaude:true, isOffline:false),
    ToolItem(id:'yt_analyzer', name:'YouTube Analyzer', description:'AI video dekh ke summary / Q&A batayega', icon:Icons.analytics_outlined, category:ToolCategory.ai, routeName:'/yt-analyzer', needsGemini:true, isOffline:false),
    ToolItem(id:'ai_fix_anything', name:'AI Fix Anything', description:'Kuch bhi bol do - Claude AI theek karega', icon:Icons.build_circle_outlined, category:ToolCategory.ai, routeName:'/ai-fix-anything', needsClaude:true, isOffline:false),
    ToolItem(id:'voice_assistant', name:'Voice Assistant', description:'Voice se poochho app ke baare mein', icon:Icons.record_voice_over_outlined, category:ToolCategory.ai, routeName:'/voice-assistant', isOffline:false),
    ToolItem(id:'gender_change', name:'Gender Change AI', description:'AI se male to female / female to male', icon:Icons.face_outlined, category:ToolCategory.ai, routeName:'/gender-change', needsGemini:true, isOffline:false),
    ToolItem(id:'ai_resume', name:'AI Resume Maker', description:'Details dalo, Claude professional resume likhega', icon:Icons.assignment_outlined, category:ToolCategory.ai, routeName:'/ai-resume', needsClaude:true, isOffline:false),
    ToolItem(id:'ai_grammar', name:'AI Grammar Fixer', description:'Hinglish/English text grammatically correct banao', icon:Icons.spellcheck_outlined, category:ToolCategory.ai, routeName:'/ai-grammar', needsClaude:true, isOffline:false),
    ToolItem(id:'image_to_prompt', name:'Image to Prompt', description:'Image se AI prompt generate karo', icon:Icons.image_search_outlined, category:ToolCategory.ai, routeName:'/image-to-prompt', needsGemini:true, isOffline:false),
    ToolItem(id:'ai_social_bio', name:'AI Social Bio', description:'Instagram/X ke liye AI bio generate karo', icon:Icons.person_outline, category:ToolCategory.ai, routeName:'/ai-social-bio', needsClaude:true, isOffline:false),
    ToolItem(id:'ai_keyword_gen', name:'AI Keyword Gen', description:'YouTube/Blog ke liye tags/keywords nikalo', icon:Icons.tag_outlined, category:ToolCategory.ai, routeName:'/ai-keyword-gen', needsClaude:true, isOffline:false),
    ToolItem(id:'image_to_recipe', name:'Image to Recipe', description:'Fridge ki photo kheencho, AI recipe batayega', icon:Icons.restaurant_menu_outlined, category:ToolCategory.ai, routeName:'/image-to-recipe', needsGemini:true, isOffline:false),
    ToolItem(id:'ai_website_builder', name:'AI Website Builder', description:'Wireframe photo kheencho, HTML/CSS code milega', icon:Icons.web_outlined, category:ToolCategory.ai, routeName:'/ai-website-builder', needsClaude:true, isOffline:false),
    ToolItem(id:'ai_doc_translator', name:'AI Doc Translator', description:'Pura PDF/Doc upload karo, AI translate karega', icon:Icons.translate_outlined, category:ToolCategory.ai, routeName:'/ai-doc-translator', needsClaude:true, isOffline:false),
    ToolItem(id:'git_helper', name:'Git Command Helper', description:'Bolo kya karna hai, AI git command likhega', icon:Icons.merge_type_outlined, category:ToolCategory.ai, routeName:'/git-helper', needsClaude:true, isOffline:false),
    ToolItem(id:'api_doc_gen', name:'API Doc Generator', description:'JSON response se professional Markdown docs banao', icon:Icons.description_outlined, category:ToolCategory.ai, routeName:'/api-doc-gen', needsClaude:true, isOffline:false),
    ToolItem(id:'ai_lyrics_writer', name:'AI Lyrics Writer', description:'Kisi bhi topic par lyrics/poem likhao', icon:Icons.music_note_outlined, category:ToolCategory.ai, routeName:'/ai-lyrics', needsClaude:true, isOffline:false),
    ToolItem(id:'ai_object_remover', name:'AI Object Remover', description:'Photo se koi bhi cheez ya insan remove karo', icon:Icons.auto_fix_normal_outlined, category:ToolCategory.ai, routeName:'/ai-object-remover', needsGemini:true, isOffline:false),
    // CODE EDITORS
    ToolItem(id:'python_editor', name:'Python Editor', description:'Syntax highlight + Find/Replace + Run', icon:Icons.code_outlined, category:ToolCategory.codeEditor, routeName:'/python-editor'),
    ToolItem(id:'java_editor', name:'Java Editor', description:'Syntax highlight + Find/Replace', icon:Icons.coffee_outlined, category:ToolCategory.codeEditor, routeName:'/java-editor'),
    ToolItem(id:'cpp_editor', name:'C++ Editor', description:'Syntax highlight + Find/Replace', icon:Icons.memory_outlined, category:ToolCategory.codeEditor, routeName:'/cpp-editor'),
    ToolItem(id:'js_editor', name:'JavaScript Editor', description:'Syntax highlight + Find/Replace + Run', icon:Icons.javascript_outlined, category:ToolCategory.codeEditor, routeName:'/js-editor'),
    ToolItem(id:'html_editor', name:'HTML/CSS Editor', description:'Syntax highlight + Live Preview', icon:Icons.html_outlined, category:ToolCategory.codeEditor, routeName:'/html-editor'),
    ToolItem(id:'php_editor', name:'PHP Editor', description:'Syntax highlight + Find/Replace', icon:Icons.php_outlined, category:ToolCategory.codeEditor, routeName:'/php-editor'),
    ToolItem(id:'kotlin_editor', name:'Kotlin Editor', description:'Syntax highlight + Find/Replace', icon:Icons.android_outlined, category:ToolCategory.codeEditor, routeName:'/kotlin-editor'),
    ToolItem(id:'shell_editor', name:'Shell/Bash Editor', description:'Syntax highlight + Find/Replace + Run', icon:Icons.terminal_outlined, category:ToolCategory.codeEditor, routeName:'/shell-editor'),
    ToolItem(id:'json_editor', name:'JSON/YAML Editor', description:'Syntax highlight + Format + Validate', icon:Icons.data_object_outlined, category:ToolCategory.codeEditor, routeName:'/json-editor'),
    ToolItem(id:'xml_editor', name:'XML Editor', description:'Syntax highlight + Find/Replace + Format', icon:Icons.code_outlined, category:ToolCategory.codeEditor, routeName:'/xml-editor'),
    // DEVELOPER TOOLS
    ToolItem(id:'hash_gen', name:'Hash Generator', description:'MD5 / SHA-1 / SHA-256 hash nikalo', icon:Icons.tag_outlined, category:ToolCategory.developer, routeName:'/hash-gen'),
    ToolItem(id:'device_info', name:'Device Info Pro', description:'RAM, CPU, Battery, Sensors ki full report', icon:Icons.phone_android_outlined, category:ToolCategory.developer, routeName:'/device-info'),
    ToolItem(id:'jwt_debugger', name:'JWT Debugger', description:'JSON Web Tokens decode aur verify karo', icon:Icons.key_outlined, category:ToolCategory.developer, routeName:'/jwt-debugger'),
    ToolItem(id:'color_contrast', name:'Color Contrast Check', description:'WCAG accessibility ke hisab se contrast check karo', icon:Icons.contrast_outlined, category:ToolCategory.developer, routeName:'/color-contrast'),
    ToolItem(id:'cron_gen', name:'Cron Expression Gen', description:'Linux cron jobs schedule code generate karo', icon:Icons.schedule_outlined, category:ToolCategory.developer, routeName:'/cron-gen'),
    ToolItem(id:'webhook_tester', name:'Webhook Tester', description:'URL par GET/POST request bhej kar response dekho', icon:Icons.webhook_outlined, category:ToolCategory.developer, routeName:'/webhook-tester', isOffline:false),
    ToolItem(id:'csv_json', name:'CSV / JSON Converter', description:'CSV to JSON aur JSON to CSV convert karo', icon:Icons.swap_horiz_outlined, category:ToolCategory.developer, routeName:'/csv-json'),
    ToolItem(id:'base_converter', name:'Base Converter', description:'Decimal / Binary / Octal / Hex conversion', icon:Icons.calculate_outlined, category:ToolCategory.developer, routeName:'/base-converter'),
    ToolItem(id:'aes_encrypt', name:'AES Encryption', description:'Text ko AES-256 encrypted code mein badlo', icon:Icons.lock_person_outlined, category:ToolCategory.developer, routeName:'/aes-encrypt'),
    ToolItem(id:'deep_link_tester', name:'Deep Link Tester', description:'Android app deep links test karo', icon:Icons.link_outlined, category:ToolCategory.developer, routeName:'/deep-link'),
    ToolItem(id:'steganography', name:'Steganography', description:'Image ke andar secret text hide karo', icon:Icons.hide_image_outlined, category:ToolCategory.developer, routeName:'/steganography'),
    ToolItem(id:'color_picker', name:'Color Picker', description:'Screen par touch karke Hex/RGB code nikalo', icon:Icons.colorize_outlined, category:ToolCategory.developer, routeName:'/color-picker'),
    ToolItem(id:'password_gen', name:'Password Generator', description:'Ultra-secure passwords symbols ke saath banao', icon:Icons.password_outlined, category:ToolCategory.developer, routeName:'/password-gen'),
    ToolItem(id:'password_meter', name:'Password Strength', description:'Password kitna strong hai live check karo', icon:Icons.bar_chart_outlined, category:ToolCategory.developer, routeName:'/password-meter'),
    ToolItem(id:'apk_extractor', name:'APK Extractor', description:'Installed apps ka APK extract karke save karo', icon:Icons.android_outlined, category:ToolCategory.developer, routeName:'/apk-extractor'),
    ToolItem(id:'disposable_email', name:'Disposable Email Check', description:'Email temporary ya fake hai ya nahi check karo', icon:Icons.email_outlined, category:ToolCategory.developer, routeName:'/disposable-email', isOffline:false),
    ToolItem(id:'percentage_calc', name:'Percentage Calculator', description:'Discount, Tip, aur Profit/Loss calculation', icon:Icons.percent_outlined, category:ToolCategory.developer, routeName:'/percent-calc'),
    ToolItem(id:'sci_calculator', name:'Scientific Calculator', description:'Basic se advanced math functions', icon:Icons.calculate_outlined, category:ToolCategory.developer, routeName:'/sci-calculator'),
    // NETWORKING TOOLS
    ToolItem(id:'dns_lookup', name:'DNS Lookup', description:'Domain ke A/AAAA/MX/TXT records nikalo', icon:Icons.dns_outlined, category:ToolCategory.networking, routeName:'/dns-lookup', isOffline:false),
    ToolItem(id:'port_scanner', name:'Port Scanner', description:'IP/website ke open ports check karo', icon:Icons.router_outlined, category:ToolCategory.networking, routeName:'/port-scanner', isOffline:false),
    ToolItem(id:'ping_test', name:'Ping Tester', description:'Server latency aur response time check karo (Gamers ke liye)', icon:Icons.network_check_outlined, category:ToolCategory.networking, routeName:'/ping-test', isOffline:false),
    ToolItem(id:'whois_lookup', name:'WHOIS Lookup', description:'Domain ka owner, registration date check karo', icon:Icons.manage_search_outlined, category:ToolCategory.networking, routeName:'/whois', isOffline:false),
    ToolItem(id:'ssl_checker', name:'SSL Checker', description:'Website ka SSL certificate valid hai ya nahi', icon:Icons.https_outlined, category:ToolCategory.networking, routeName:'/ssl-checker', isOffline:false),
    ToolItem(id:'ip_finder', name:'IP Finder', description:'Local aur Public IP address dikhao', icon:Icons.language_outlined, category:ToolCategory.networking, routeName:'/ip-finder', isOffline:false),
    ToolItem(id:'speed_test', name:'Speed Test', description:'Internet download/upload speed check karo', icon:Icons.speed_outlined, category:ToolCategory.networking, routeName:'/speed-test', isOffline:false),
    ToolItem(id:'mac_lookup', name:'MAC Address Lookup', description:'MAC address se device manufacturer pata lagao', icon:Icons.devices_outlined, category:ToolCategory.networking, routeName:'/mac-lookup', isOffline:false),
    ToolItem(id:'redirect_checker', name:'Redirect Checker', description:'Link kitne domains se redirect ho kar jaati hai', icon:Icons.open_in_browser_outlined, category:ToolCategory.networking, routeName:'/redirect-checker', isOffline:false),
    ToolItem(id:'web_to_pdf', name:'Web to PDF', description:'Kisi bhi URL ko PDF/screenshot mein convert karo', icon:Icons.print_outlined, category:ToolCategory.networking, routeName:'/web-to-pdf', isOffline:false),
    ToolItem(id:'proxy_checker', name:'Proxy/VPN Checker', description:'Connection kitna secure hai check karo', icon:Icons.vpn_lock_outlined, category:ToolCategory.networking, routeName:'/proxy-checker', isOffline:false),
    // SYSTEM TOOLS
    ToolItem(id:'storage_analyzer', name:'Storage Analyzer', description:'Pie chart mein dekho kaunsa folder space leta hai', icon:Icons.donut_large_outlined, category:ToolCategory.system, routeName:'/storage-analyzer'),
    ToolItem(id:'junk_cleaner', name:'Junk Cleaner', description:'Khali folders scan karke delete karo', icon:Icons.cleaning_services_outlined, category:ToolCategory.system, routeName:'/junk-cleaner'),
    ToolItem(id:'battery_info', name:'Battery Surgeon', description:'Battery health, temperature, voltage detail', icon:Icons.battery_full_outlined, category:ToolCategory.system, routeName:'/battery-info'),
    ToolItem(id:'sensor_feed', name:'Sensor Live Feed', description:'Accelerometer/Gyroscope/Magnetometer live data graph', icon:Icons.sensors_outlined, category:ToolCategory.system, routeName:'/sensor-feed'),
    ToolItem(id:'sound_meter', name:'Sound Meter (dB)', description:'Microphone se aas-paas ka noise level measure karo', icon:Icons.hearing_outlined, category:ToolCategory.system, routeName:'/sound-meter'),
    ToolItem(id:'compass', name:'Compass & Leveler', description:'Direction aur surface level phone sensors se check karo', icon:Icons.explore_outlined, category:ToolCategory.system, routeName:'/compass'),
    ToolItem(id:'secure_notes', name:'Secure Notes', description:'AES-256 encrypted notes, fingerprint se khulenge', icon:Icons.note_alt_outlined, category:ToolCategory.system, routeName:'/secure-notes'),
    ToolItem(id:'invisible_vault', name:'Invisible Vault', description:'Private photos/docs jo gallery mein nahi dikhenge', icon:Icons.visibility_off_outlined, category:ToolCategory.system, routeName:'/invisible-vault'),
    ToolItem(id:'file_shredder', name:'Secure File Shredder', description:'Files delete karo jo kabhi recover na ho sakein', icon:Icons.delete_forever_outlined, category:ToolCategory.system, routeName:'/file-shredder'),
    ToolItem(id:'wifi_qr', name:'WiFi QR Generator', description:'Bina password dikhaye WiFi connect karwao', icon:Icons.wifi_outlined, category:ToolCategory.system, routeName:'/wifi-qr'),
    ToolItem(id:'fake_call', name:'Fake Call Generator', description:'Boring situations se nikalne ke liye fake call schedule karo', icon:Icons.call_outlined, category:ToolCategory.system, routeName:'/fake-call'),
    ToolItem(id:'sos_flashlight', name:'SOS Flashlight', description:'Emergency mein SOS Morse flashlight + police siren', icon:Icons.flashlight_on_outlined, category:ToolCategory.system, routeName:'/sos-flashlight'),
    ToolItem(id:'anti_theft', name:'Anti-Theft Alarm', description:'Phone uthane ya jeb se nikalte hi alarm bajega', icon:Icons.alarm_outlined, category:ToolCategory.system, routeName:'/anti-theft'),
    // UTILITY / LIFESTYLE
    ToolItem(id:'qr_suite', name:'QR & Barcode Suite', description:'QR generate (Text/WiFi/URL) + scan karo', icon:Icons.qr_code_outlined, category:ToolCategory.utility, routeName:'/qr-suite'),
    ToolItem(id:'unit_converter', name:'Unit Converter', description:'Length/Weight/Temp/Currency sab convert karo', icon:Icons.straighten_outlined, category:ToolCategory.utility, routeName:'/unit-converter'),
    ToolItem(id:'link_vault', name:'Link Vault', description:'Links save karo, auto-detect platform + download', icon:Icons.bookmarks_outlined, category:ToolCategory.utility, routeName:'/link-vault'),
    ToolItem(id:'temp_notes', name:'Temporary Notes', description:'In-app scratchpad bina file save kiye', icon:Icons.sticky_note_2_outlined, category:ToolCategory.utility, routeName:'/temp-notes'),
    ToolItem(id:'direct_whatsapp', name:'Direct WhatsApp Chat', description:'Bina number save kiye WhatsApp message bhejo', icon:Icons.message_outlined, category:ToolCategory.utility, routeName:'/direct-wa'),
    ToolItem(id:'vcard_gen', name:'VCard Generator', description:'Scan karte hi contact save ho jaye wala QR banao', icon:Icons.contact_page_outlined, category:ToolCategory.utility, routeName:'/vcard-gen'),
    ToolItem(id:'auto_typer', name:'Auto-Typer / Expander', description:'/addr jaise shortcuts se full text expand karo', icon:Icons.keyboard_outlined, category:ToolCategory.utility, routeName:'/auto-typer'),
    ToolItem(id:'download_manager', name:'Download Manager', description:'App ke andar saare downloads aur history dekho', icon:Icons.download_outlined, category:ToolCategory.utility, routeName:'/download-manager'),
    ToolItem(id:'reverse_image', name:'Reverse Image Search', description:'Image upload karke original source dhundho', icon:Icons.image_search_outlined, category:ToolCategory.utility, routeName:'/reverse-image', isOffline:false),
    ToolItem(id:'bmi_calculator', name:'BMI Calculator', description:'Height aur Weight se health status batao', icon:Icons.monitor_weight_outlined, category:ToolCategory.lifestyle, routeName:'/bmi'),
    ToolItem(id:'age_calculator', name:'Age Calculator', description:'DOB se exact years/months/days nikalo', icon:Icons.cake_outlined, category:ToolCategory.lifestyle, routeName:'/age-calc'),
    ToolItem(id:'world_clock', name:'World Clock', description:'Ek timezone se dusre mein time convert karo', icon:Icons.access_time_outlined, category:ToolCategory.lifestyle, routeName:'/world-clock'),
    ToolItem(id:'medicine_reminder', name:'Medicine Reminder', description:'Simple alarm jo dawai lene ka time yaad dilaye', icon:Icons.medication_outlined, category:ToolCategory.lifestyle, routeName:'/medicine-reminder'),
    ToolItem(id:'rto_checker', name:'Vehicle Info (RTO)', description:'Gaadi ka number daal kar details check karo', icon:Icons.directions_car_outlined, category:ToolCategory.lifestyle, routeName:'/rto-checker', isOffline:false),
    ToolItem(id:'emi_calculator', name:'EMI Calculator', description:'Loan ki EMI calculate karo', icon:Icons.attach_money_outlined, category:ToolCategory.business, routeName:'/emi-calc'),
    ToolItem(id:'gst_calculator', name:'GST / VAT Calculator', description:'Tax inclusive aur exclusive amounts calculate karo', icon:Icons.receipt_long_outlined, category:ToolCategory.business, routeName:'/gst-calc'),
    ToolItem(id:'invoice_gen', name:'Invoice Generator', description:'PDF format mein business invoice generate karo', icon:Icons.receipt_outlined, category:ToolCategory.business, routeName:'/invoice-gen'),
    ToolItem(id:'crypto_tracker', name:'Crypto Live Tracker', description:'Top 10 cryptocurrencies ki live price dekho', icon:Icons.currency_bitcoin_outlined, category:ToolCategory.business, routeName:'/crypto-tracker', isOffline:false),
    ToolItem(id:'mp3_autotagger', name:'MP3 Auto-Tagger', description:'AI se audio files ke missing metadata fill karo', icon:Icons.sell_outlined, category:ToolCategory.media, routeName:'/mp3-autotagger', needsGemini:true, isOffline:false),
    // SPECIAL / MISSING TOOLS
    ToolItem(id:'secret_vault', name:'Secret Calculator', description:'Normal calculator dikhega, PIN se hidden files khulenge', icon:Icons.calculate_outlined, category:ToolCategory.system, routeName:'/secret-vault'),
    ToolItem(id:'reel_toolkit', name:'Reel/Shorts Toolkit', description:'Auto caption, subtitle, ratio 16:9 to 9:16 convert', icon:Icons.video_collection_outlined, category:ToolCategory.media, routeName:'/reel-toolkit'),
    ToolItem(id:'ai_workflow', name:'AI Workflow Builder', description:'Drag & drop: Image to Compress to Rename to Upload', icon:Icons.account_tree_outlined, category:ToolCategory.ai, routeName:'/ai-workflow', needsGemini:true, isOffline:false),
    ToolItem(id:'smart_workspace', name:'Smart Workspaces', description:'YouTube/Study Setup - ek click mein multiple tools ready', icon:Icons.workspaces_outlined, category:ToolCategory.utility, routeName:'/smart-workspace'),
    ToolItem(id:'share_kit', name:'One-Click Share Kit', description:'Compress + Rename + Convert + Upload ek click mein', icon:Icons.rocket_launch_outlined, category:ToolCategory.utility, routeName:'/share-kit'),
    ToolItem(id:'scan_to_pdf', name:'Scan to PDF', description:'Camera se photo kheencho, auto scan + PDF + share', icon:Icons.document_scanner_outlined, category:ToolCategory.file, routeName:'/scan-to-pdf'),
    ToolItem(id:'universal_opener', name:'Universal File Opener', description:'Unknown file - app suggest karega Convert/Extract/View', icon:Icons.folder_open_outlined, category:ToolCategory.file, routeName:'/universal-opener'),
    ToolItem(id:'app_lock', name:'App Lock', description:'PIN ya Fingerprint se poori app lock karo', icon:Icons.lock_outlined, category:ToolCategory.system, routeName:'/app-lock'),
    ToolItem(id:'favicon_downloader', name:'Favicon Downloader', description:'Kisi bhi URL ka icon high resolution mein download karo', icon:Icons.language_outlined, category:ToolCategory.networking, routeName:'/favicon-downloader', isOffline:false),
    ToolItem(id:'source_viewer', name:'Source Code Viewer', description:'Kisi bhi website ka HTML code phone par read/save karo', icon:Icons.source_outlined, category:ToolCategory.networking, routeName:'/source-viewer', isOffline:false),
    ToolItem(id:'graph_plotter', name:'Graph Plotter', description:'Math equations ka graph generate karo', icon:Icons.show_chart_outlined, category:ToolCategory.developer, routeName:'/graph-plotter'),
    ToolItem(id:'robots_finder', name:'Robots.txt Finder', description:'SEO ke liye robots.txt aur sitemap dhundho', icon:Icons.policy_outlined, category:ToolCategory.networking, routeName:'/robots-finder', isOffline:false),
    ToolItem(id:'dominant_color', name:'Image Dominant Color', description:'Photo mein sabse zyada kaunsa rang hai, Hex code nikalo', icon:Icons.format_color_fill_outlined, category:ToolCategory.media, routeName:'/dominant-color'),
  ];
  static List<ToolItem> byCategory(ToolCategory category) =>
      all.where((t) => t.category == category).toList();
  static ToolItem? byId(String id) {
    try { return all.firstWhere((t) => t.id == id); } catch (_) { return null; }
  }
  static List<ToolItem> search(String query) {
    if (query.trim().isEmpty) return all;
    final q = query.toLowerCase();
    return all.where((t) =>
        t.name.toLowerCase().contains(q) ||
        t.description.toLowerCase().contains(q) ||
        t.category.name.toLowerCase().contains(q)).toList();
  }

  static Map<ToolCategory, String> categoryNames = {
    ToolCategory.file: 'File Vault',
    ToolCategory.text: 'Text Tools',
    ToolCategory.media: 'Media Studio',
    ToolCategory.downloader: 'Downloader',
    ToolCategory.ai: 'AI Lab',
    ToolCategory.codeEditor: 'Code Editors',
    ToolCategory.developer: 'Dev Shack',
    ToolCategory.utility: 'Utility',
    ToolCategory.networking: 'Networking',
    ToolCategory.system: 'System Tools',
    ToolCategory.business: 'Business',
    ToolCategory.lifestyle: 'Lifestyle',
  };
  static Map<ToolCategory, IconData> categoryIcons = {
    ToolCategory.file: Icons.folder_outlined,
    ToolCategory.text: Icons.text_snippet_outlined,
    ToolCategory.media: Icons.perm_media_outlined,
    ToolCategory.downloader: Icons.download_outlined,
    ToolCategory.ai: Icons.auto_awesome_outlined,
    ToolCategory.codeEditor: Icons.code_outlined,
    ToolCategory.developer: Icons.developer_mode_outlined,
    ToolCategory.utility: Icons.build_outlined,
    ToolCategory.networking: Icons.wifi_outlined,
    ToolCategory.system: Icons.phone_android_outlined,
    ToolCategory.business: Icons.business_outlined,
    ToolCategory.lifestyle: Icons.favorite_outline,
  };
}
