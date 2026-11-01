package com.snaptube.taskManager.task;

import android.text.TextUtils;
import com.bytedance.sdk.component.pglcrypt.PglCryptUtils;
import com.vungle.ads.internal.protos.Sdk;

public enum TaskError {
    FILE_PATH_EMPTY(1, "filePath is empty."),
    GENERATE_SAVE_FILE_FAILED(2, "Failed to generateSaveFile. "),
    DOWNLOAD_FAILED(3, "Download failed."),
    START_DOWNLOAD_REQUEST_FAILED(4, "Failed to start download request."),
    INVALID_DOWNLOAD_INFO(5, "Invalid download info."),
    EXTRACT_VIDEO_INFO_FAILED(6, "Failed to extract video info."),
    FORMAT_NOT_FOUND(7, "Format not found."),
    UNKNOWN_FORMAT(8, "Unknown video format tag."),
    CLONE_VIDEO_FORMAT_FAILED(9, "Failed to clone Format."),
    INVALID_MEDIA_FILE(10, "Invalid media file."),
    INVALID_REQUEST(11, "Invalid request."),
    RESOLVE_FORMAT_ERROR(12, "resolve format error."),
    MD5_MISMATCH(13, "File md5 mismatch."),
    NO_STORAGE_PERMISSION(14, "No storage permission."),
    NO_ENOUGH_SPACE(15, "No enough storage."),
    TASK_DELETE(16, "user cancel"),
    EXTRACT_VIDEO_INFO_TIME_OUT(17, "Extract timeout"),
    HD_COMBINE_NOT_SUPPORTED(201, "HD combine not supported."),
    HD_AUDIO_STREAM_NOT_FOUND(Sdk.SDKError.Reason.AD_CONSUMED_VALUE, "Audio stream not found for Youtube HD task."),
    HD_VIDEO_FORMAT_NOT_FOUND(Sdk.SDKError.Reason.AD_IS_LOADING_VALUE, "Video format not found for Youtube HD task."),
    HD_FAILED_TO_MUX(Sdk.SDKError.Reason.AD_ALREADY_LOADED_VALUE, "Failed to mux video with audio."),
    MP4_PHOTO_VIDEO(Sdk.SDKError.Reason.AD_IS_PLAYING_VALUE, "Failed to mux images to video."),
    MP3_RENAME_FILE_FAILED(Sdk.SDKError.Reason.MRAID_ERROR_VALUE, "Failed to rename file."),
    MP3_CONVERT_M4A_FAILED(Sdk.SDKError.Reason.INVALID_IFA_STATUS_VALUE, "Failed to convert m4a to mp3."),
    MP3_CONVERT_WEBM_FAILED(303, "Failed to convert webm to mp3."),
    MP3_extract_FAILED(Sdk.SDKError.Reason.AD_EXPIRED_VALUE, "Failed to extract audio to mp3."),
    M4A_RENAME_FILE_FAILED(401, "Failed to rename file."),
    M4A_CONVERT_MPEG_FAILED(402, "Failed to convert m4a DASH to MPEG."),
    PLUGIN_PARSE_IDENTITY_FAILED(PglCryptUtils.LOAD_SO_FAILED, "Failed to parse plugin's identity"),
    PLUGIN_FETCH_PLUGIN_INFO_FAILED(PglCryptUtils.INPUT_INVALID, "Failed to fetch plugin's info"),
    PLUGIN_INFO_INVALID(PglCryptUtils.COMPRESS_FAILED, "Plugin's info is invalid"),
    PLUGIN_NOT_SUPPORTED(PglCryptUtils.BASE64_FAILED, "Plugin not supported"),
    PLUGIN_VERSION_NOT_MATCH(PglCryptUtils.ENCRYPT_FAILED, "Plugin version not matched"),
    PLUGIN_RESET_SAVE_PATH_FAILED(PglCryptUtils.DECRYPT_FAILED, "Reset savePath failed"),
    PLUGIN_EXTRACT_FAILED(507, "Extract plugin failed"),
    PLUGIN_DELETE_PLUGIN_DIR_FAILED(508, "Delete plugin dir failed"),
    PLUGIN_RENAME_PLUGIN_DIR_FAILED(509, "Rename plugin dir failed"),
    PLUGIN_INFO_NOT_EXISTS(510, "Plugin's info is not exists."),
    PLUGIN_IDENTITY_NOT_MATCHED(511, "Plugin's identity is not matched.");

    private String description;
    private int errorCode;

    TaskError(int i, String str) {
        this.errorCode = i;
        this.description = str;
    }

    public String appendDetails(String str) {
        if (TextUtils.isEmpty(str)) {
            return this.description;
        }
        return this.description + " " + str;
    }

    public String getDescription() {
        return this.description;
    }

    public int getErrorCode() {
        return this.errorCode;
    }
}
