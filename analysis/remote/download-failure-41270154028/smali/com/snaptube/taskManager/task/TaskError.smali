.class public final enum Lcom/snaptube/taskManager/task/TaskError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snaptube/taskManager/task/TaskError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum CLONE_VIDEO_FORMAT_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum DOWNLOAD_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum EXTRACT_VIDEO_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum EXTRACT_VIDEO_INFO_TIME_OUT:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum FORMAT_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum GENERATE_SAVE_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum HD_AUDIO_STREAM_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum HD_COMBINE_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum HD_FAILED_TO_MUX:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum HD_VIDEO_FORMAT_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum INVALID_DOWNLOAD_INFO:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum INVALID_MEDIA_FILE:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum INVALID_REQUEST:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum M4A_CONVERT_MPEG_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum M4A_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum MD5_MISMATCH:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum MP3_CONVERT_M4A_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum MP3_CONVERT_WEBM_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum MP3_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum MP3_extract_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum MP4_PHOTO_VIDEO:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum NO_ENOUGH_SPACE:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_DELETE_PLUGIN_DIR_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_EXTRACT_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_FETCH_PLUGIN_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_IDENTITY_NOT_MATCHED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_INFO_INVALID:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_INFO_NOT_EXISTS:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_PARSE_IDENTITY_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_RENAME_PLUGIN_DIR_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_RESET_SAVE_PATH_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum PLUGIN_VERSION_NOT_MATCH:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum RESOLVE_FORMAT_ERROR:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum START_DOWNLOAD_REQUEST_FAILED:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum TASK_DELETE:Lcom/snaptube/taskManager/task/TaskError;

.field public static final enum UNKNOWN_FORMAT:Lcom/snaptube/taskManager/task/TaskError;


# instance fields
.field private description:Ljava/lang/String;

.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "filePath is empty."

    const-string v2, "FILE_PATH_EMPTY"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Failed to generateSaveFile. "

    const-string v2, "GENERATE_SAVE_FILE_FAILED"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->GENERATE_SAVE_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Download failed."

    const-string v2, "DOWNLOAD_FAILED"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->DOWNLOAD_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Failed to start download request."

    const-string v2, "START_DOWNLOAD_REQUEST_FAILED"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->START_DOWNLOAD_REQUEST_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Invalid download info."

    const-string v2, "INVALID_DOWNLOAD_INFO"

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->INVALID_DOWNLOAD_INFO:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Failed to extract video info."

    const-string v2, "EXTRACT_VIDEO_INFO_FAILED"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Format not found."

    const-string v2, "FORMAT_NOT_FOUND"

    const/4 v4, 0x7

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->FORMAT_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Unknown video format tag."

    const-string v2, "UNKNOWN_FORMAT"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->UNKNOWN_FORMAT:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Failed to clone Format."

    const-string v2, "CLONE_VIDEO_FORMAT_FAILED"

    const/16 v4, 0x9

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->CLONE_VIDEO_FORMAT_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Invalid media file."

    const-string v2, "INVALID_MEDIA_FILE"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->INVALID_MEDIA_FILE:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Invalid request."

    const-string v2, "INVALID_REQUEST"

    const/16 v4, 0xb

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->INVALID_REQUEST:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "resolve format error."

    const-string v2, "RESOLVE_FORMAT_ERROR"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->RESOLVE_FORMAT_ERROR:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "File md5 mismatch."

    const-string v2, "MD5_MISMATCH"

    const/16 v4, 0xd

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->MD5_MISMATCH:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "No storage permission."

    const-string v2, "NO_STORAGE_PERMISSION"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "No enough storage."

    const-string v2, "NO_ENOUGH_SPACE"

    const/16 v4, 0xf

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_ENOUGH_SPACE:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "user cancel"

    const-string v2, "TASK_DELETE"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->TASK_DELETE:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Extract timeout"

    const-string v2, "EXTRACT_VIDEO_INFO_TIME_OUT"

    const/16 v4, 0x11

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_TIME_OUT:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0xc9

    const-string v2, "HD combine not supported."

    const-string v3, "HD_COMBINE_NOT_SUPPORTED"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->HD_COMBINE_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0xca

    const-string v2, "Audio stream not found for Youtube HD task."

    const-string v3, "HD_AUDIO_STREAM_NOT_FOUND"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->HD_AUDIO_STREAM_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0xcb

    const-string v2, "Video format not found for Youtube HD task."

    const-string v3, "HD_VIDEO_FORMAT_NOT_FOUND"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->HD_VIDEO_FORMAT_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0xcc

    const-string v2, "Failed to mux video with audio."

    const-string v3, "HD_FAILED_TO_MUX"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->HD_FAILED_TO_MUX:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0xcd

    const-string v2, "Failed to mux images to video."

    const-string v3, "MP4_PHOTO_VIDEO"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->MP4_PHOTO_VIDEO:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "MP3_RENAME_FILE_FAILED"

    const/16 v2, 0x16

    const/16 v3, 0x12d

    const-string v4, "Failed to rename file."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->MP3_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x12e

    const-string v2, "Failed to convert m4a to mp3."

    const-string v3, "MP3_CONVERT_M4A_FAILED"

    const/16 v5, 0x17

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->MP3_CONVERT_M4A_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x12f

    const-string v2, "Failed to convert webm to mp3."

    const-string v3, "MP3_CONVERT_WEBM_FAILED"

    const/16 v5, 0x18

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->MP3_CONVERT_WEBM_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x130

    const-string v2, "Failed to extract audio to mp3."

    const-string v3, "MP3_extract_FAILED"

    const/16 v5, 0x19

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->MP3_extract_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1a

    const/16 v2, 0x191

    const-string v3, "M4A_RENAME_FILE_FAILED"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->M4A_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x192

    const-string v2, "Failed to convert m4a DASH to MPEG."

    const-string v3, "M4A_CONVERT_MPEG_FAILED"

    const/16 v4, 0x1b

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->M4A_CONVERT_MPEG_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1f5

    const-string v2, "Failed to parse plugin\'s identity"

    const-string v3, "PLUGIN_PARSE_IDENTITY_FAILED"

    const/16 v4, 0x1c

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_PARSE_IDENTITY_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1f6

    const-string v2, "Failed to fetch plugin\'s info"

    const-string v3, "PLUGIN_FETCH_PLUGIN_INFO_FAILED"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_FETCH_PLUGIN_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1f7

    const-string v2, "Plugin\'s info is invalid"

    const-string v3, "PLUGIN_INFO_INVALID"

    const/16 v4, 0x1e

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_INFO_INVALID:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1f8

    const-string v2, "Plugin not supported"

    const-string v3, "PLUGIN_NOT_SUPPORTED"

    const/16 v4, 0x1f

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1f9

    const-string v2, "Plugin version not matched"

    const-string v3, "PLUGIN_VERSION_NOT_MATCH"

    const/16 v4, 0x20

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_VERSION_NOT_MATCH:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1fa

    const-string v2, "Reset savePath failed"

    const-string v3, "PLUGIN_RESET_SAVE_PATH_FAILED"

    const/16 v4, 0x21

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_RESET_SAVE_PATH_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1fb

    const-string v2, "Extract plugin failed"

    const-string v3, "PLUGIN_EXTRACT_FAILED"

    const/16 v4, 0x22

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_EXTRACT_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1fc

    const-string v2, "Delete plugin dir failed"

    const-string v3, "PLUGIN_DELETE_PLUGIN_DIR_FAILED"

    const/16 v4, 0x23

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_DELETE_PLUGIN_DIR_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1fd

    const-string v2, "Rename plugin dir failed"

    const-string v3, "PLUGIN_RENAME_PLUGIN_DIR_FAILED"

    const/16 v4, 0x24

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_RENAME_PLUGIN_DIR_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1fe

    const-string v2, "Plugin\'s info is not exists."

    const-string v3, "PLUGIN_INFO_NOT_EXISTS"

    const/16 v4, 0x25

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_INFO_NOT_EXISTS:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskError;

    const/16 v1, 0x1ff

    const-string v2, "Plugin\'s identity is not matched."

    const-string v3, "PLUGIN_IDENTITY_NOT_MATCHED"

    const/16 v4, 0x26

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/snaptube/taskManager/task/TaskError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_IDENTITY_NOT_MATCHED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-static {}, Lcom/snaptube/taskManager/task/TaskError;->a()[Lcom/snaptube/taskManager/task/TaskError;

    move-result-object v0

    sput-object v0, Lcom/snaptube/taskManager/task/TaskError;->$VALUES:[Lcom/snaptube/taskManager/task/TaskError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/snaptube/taskManager/task/TaskError;->errorCode:I

    iput-object p4, p0, Lcom/snaptube/taskManager/task/TaskError;->description:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lcom/snaptube/taskManager/task/TaskError;
    .locals 3

    const/16 v0, 0x27

    new-array v0, v0, [Lcom/snaptube/taskManager/task/TaskError;

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->GENERATE_SAVE_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->DOWNLOAD_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->START_DOWNLOAD_REQUEST_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->INVALID_DOWNLOAD_INFO:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->FORMAT_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->UNKNOWN_FORMAT:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->CLONE_VIDEO_FORMAT_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->INVALID_MEDIA_FILE:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->INVALID_REQUEST:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->RESOLVE_FORMAT_ERROR:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->MD5_MISMATCH:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->NO_ENOUGH_SPACE:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->TASK_DELETE:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_TIME_OUT:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->HD_COMBINE_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->HD_AUDIO_STREAM_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->HD_VIDEO_FORMAT_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->HD_FAILED_TO_MUX:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->MP4_PHOTO_VIDEO:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->MP3_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->MP3_CONVERT_M4A_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->MP3_CONVERT_WEBM_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->MP3_extract_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->M4A_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->M4A_CONVERT_MPEG_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_PARSE_IDENTITY_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_FETCH_PLUGIN_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_INFO_INVALID:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_VERSION_NOT_MATCH:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_RESET_SAVE_PATH_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_EXTRACT_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_DELETE_PLUGIN_DIR_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_RENAME_PLUGIN_DIR_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_INFO_NOT_EXISTS:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_IDENTITY_NOT_MATCHED:Lcom/snaptube/taskManager/task/TaskError;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snaptube/taskManager/task/TaskError;
    .locals 1

    const-class v0, Lcom/snaptube/taskManager/task/TaskError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snaptube/taskManager/task/TaskError;

    return-object p0
.end method

.method public static values()[Lcom/snaptube/taskManager/task/TaskError;
    .locals 1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->$VALUES:[Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v0}, [Lcom/snaptube/taskManager/task/TaskError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snaptube/taskManager/task/TaskError;

    return-object v0
.end method


# virtual methods
.method public appendDetails(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/TaskError;->description:Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snaptube/taskManager/task/TaskError;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/TaskError;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/snaptube/taskManager/task/TaskError;->errorCode:I

    return v0
.end method
