package com.transsion.hubsdk.api.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.transsion.hubsdk.aosp.provider.TranAospSettings;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.provider.TranThubSettings;
import com.transsion.hubsdk.interfaces.provider.ITranSettingsAdapter;

public class TranSettings {
    public static final String ASSISTANT = "assistant";
    public static final String CROSS_PROFILE_CALENDAR_ENABLED = "cross_profile_calendar_enabled";
    public static final String MANAGED_PROFILE_CONTACT_REMOTE_SEARCH = "managed_profile_contact_remote_search";
    public static final String SCREEN_BRIGHTNESS_FLOAT = "screen_brightness_float";
    public static final String SHOW_TOUCHES = "show_touches";
    private static final String TAG = "TranSettings";
    public static final String USER_SETUP_COMPLETE = "user_setup_complete";
    public static final int ZEN_MODE_IMPORTANT_INTERRUPTIONS = 1;
    public static final int ZEN_MODE_OFF = 0;
    protected static TranAospSettings sAospService;
    protected static TranThubSettings sThubService;

    public static final class Global extends Settings.NameValueTable {
        public static final String LOW_BATTERY_SOUND = "low_battery_sound";
    }

    public static final class Secure extends Settings.NameValueTable {
        public static final String BACK_GESTURE_INSET_SCALE_LEFT = "back_gesture_inset_scale_left";
        public static final String BACK_GESTURE_INSET_SCALE_RIGHT = "back_gesture_inset_scale_right";
        public static final String CROSS_PROFILE_CALENDAR_ENABLED = "cross_profile_calendar_enabled";
        public static final String MANAGED_PROFILE_CONTACT_REMOTE_SEARCH = "managed_profile_contact_remote_search";
        public static final String USER_SETUP_COMPLETE = "user_setup_complete";
    }

    public static final class System extends Settings.NameValueTable {
        public static final String VOLUME_VOICE = "volume_voice";
        public static final String VOLUME_SYSTEM = "volume_system";
        public static final String VOLUME_RING = "volume_ring";
        public static final String VOLUME_MUSIC = "volume_music";
        public static final String VOLUME_ALARM = "volume_alarm";
        public static final String VOLUME_NOTIFICATION = "volume_notification";
        public static final String VOLUME_BLUETOOTH_SCO = "volume_bluetooth_sco";
        public static final String VOLUME_ACCESSIBILITY = "volume_a11y";
        public static final String VOLUME_ASSISTANT = "volume_assistant";
        public static final String[] VOLUME_SETTINGS_INT = {VOLUME_VOICE, VOLUME_SYSTEM, VOLUME_RING, VOLUME_MUSIC, VOLUME_ALARM, VOLUME_NOTIFICATION, VOLUME_BLUETOOTH_SCO, "", "", "", VOLUME_ACCESSIBILITY, VOLUME_ASSISTANT};
    }

    public static int getSecureIntForUser(String str, int i, int i2) {
        return getService(TranVersion.Core.VERSION_33141).getSecureIntForUser(str, i, i2);
    }

    public static ITranSettingsAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubSettings");
            TranThubSettings tranThubSettings = sThubService;
            if (tranThubSettings != null) {
                return tranThubSettings;
            }
            TranThubSettings tranThubSettings2 = new TranThubSettings();
            sThubService = tranThubSettings2;
            return tranThubSettings2;
        }
        TranSdkLog.i(TAG, "TranAospSettings");
        TranAospSettings tranAospSettings = sAospService;
        if (tranAospSettings != null) {
            return tranAospSettings;
        }
        TranAospSettings tranAospSettings2 = new TranAospSettings();
        sAospService = tranAospSettings2;
        return tranAospSettings2;
    }

    public static boolean putSecureIntForUser(String str, int i, int i2) {
        return getService(TranVersion.Core.VERSION_33141).putSecureIntForUser(str, i, i2);
    }

    public String getSecureStringForUser(String str, int i) {
        return getService(TranVersion.Core.VERSION_33151).getSecureStringForUser(str, i);
    }

    public float getSystemFloatForUser(String str, float f, int i) {
        return getService(TranVersion.Core.VERSION_33151).getSystemFloatForUser(str, f, i);
    }

    public long getSystemLongForUser(ContentResolver contentResolver, String str, long j, int i) {
        return getService(TranVersion.Core.VERSION_33311).getSystemLongForUser(contentResolver, str, j, i);
    }

    @TranLevel(level = 1)
    public boolean putGlobalInt(Context context, String str, int i) {
        return getService(TranVersion.Core.VERSION_33181).putGlobalInt(context, str, i);
    }

    @TranLevel(level = 1)
    public boolean putSecureInt(Context context, String str, int i) {
        return getService(TranVersion.Core.VERSION_33181).putSecureInt(context, str, i);
    }

    public boolean putSecureStringForUser(String str, String str2, int i) {
        return getService(TranVersion.Core.VERSION_33151).putSecureStringForUser(str, str2, i);
    }

    public boolean putSystemFloatForUser(String str, float f, int i) {
        return getService(TranVersion.Core.VERSION_33151).putSystemFloatForUser(str, f, i);
    }

    public static int getSecureIntForUser(ContentResolver contentResolver, String str, int i, int i2) {
        return getService(TranVersion.Core.VERSION_33181).getSecureIntForUser(contentResolver, str, i, i2);
    }

    public static String getSecureStringForUser(ContentResolver contentResolver, String str, int i) {
        return getService(TranVersion.Core.VERSION_33181).getSecureStringForUser(contentResolver, str, i);
    }

    public static float getSystemFloatForUser(ContentResolver contentResolver, String str, float f, int i) {
        return getService(TranVersion.Core.VERSION_33181).getSystemFloatForUser(contentResolver, str, f, i);
    }

    public static boolean putSecureIntForUser(ContentResolver contentResolver, String str, int i, int i2) {
        return getService(TranVersion.Core.VERSION_33181).putSecureIntForUser(contentResolver, str, i, i2);
    }

    public static boolean putSecureStringForUser(ContentResolver contentResolver, String str, String str2, int i) {
        return getService(TranVersion.Core.VERSION_33181).putSecureStringForUser(contentResolver, str, str2, i);
    }

    public static boolean putSystemFloatForUser(ContentResolver contentResolver, String str, float f, int i) {
        return getService(TranVersion.Core.VERSION_33181).putSystemFloatForUser(contentResolver, str, f, i);
    }
}
