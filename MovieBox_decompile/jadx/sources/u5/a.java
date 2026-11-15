package u5;

import android.os.Build;

public final class a {

    private static final String[] f73001a = {"android.permission.READ_CALENDAR", "android.permission.WRITE_CALENDAR"};

    private static final String[] f73002b = {"android.permission.CAMERA"};

    private static final String[] f73003c = {"android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.GET_ACCOUNTS"};

    private static final String[] f73004d = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_BACKGROUND_LOCATION"};

    private static final String[] f73005e = {"android.permission.RECORD_AUDIO"};

    private static final String[] f73006f = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "com.android.voicemail.permission.ADD_VOICEMAIL", "android.permission.USE_SIP", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.ANSWER_PHONE_CALLS"};

    private static final String[] f73007g = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "com.android.voicemail.permission.ADD_VOICEMAIL", "android.permission.USE_SIP", "android.permission.PROCESS_OUTGOING_CALLS"};

    private static final String[] f73008h = {"android.permission.BODY_SENSORS"};

    private static final String[] f73009i = {"android.permission.SEND_SMS", "android.permission.RECEIVE_SMS", "android.permission.READ_SMS", "android.permission.RECEIVE_WAP_PUSH", "android.permission.RECEIVE_MMS"};

    private static final String[] f73010j = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    private static final String[] f73011k = {"android.permission.ACTIVITY_RECOGNITION"};

    public static String[] a(String str) {
        if (str == null) {
            return new String[0];
        }
        switch (str) {
            case "LOCATION":
                return f73004d;
            case "SENSORS":
                return f73008h;
            case "STORAGE":
                return f73010j;
            case "SMS":
                return f73009i;
            case "PHONE":
                return Build.VERSION.SDK_INT < 26 ? f73007g : f73006f;
            case "ACTIVITY_RECOGNITION":
                return f73011k;
            case "CONTACTS":
                return f73003c;
            case "CALENDAR":
                return f73001a;
            case "MICROPHONE":
                return f73005e;
            case "CAMERA":
                return f73002b;
            default:
                return new String[]{str};
        }
    }
}
