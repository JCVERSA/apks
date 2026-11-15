package com.transsion.hubsdk.api.provider;

public class TranSearchIndexablesContract {
    public static final String[] INDEXABLES_RAW_COLUMNS = {TranBaseColumns.COLUMN_RANK, "title", TranRawData.COLUMN_SUMMARY_ON, TranRawData.COLUMN_SUMMARY_OFF, TranRawData.COLUMN_ENTRIES, TranRawData.COLUMN_KEYWORDS, TranRawData.COLUMN_SCREEN_TITLE, TranBaseColumns.COLUMN_CLASS_NAME, TranBaseColumns.COLUMN_ICON_RESID, TranBaseColumns.COLUMN_INTENT_ACTION, TranBaseColumns.COLUMN_INTENT_TARGET_PACKAGE, TranBaseColumns.COLUMN_INTENT_TARGET_CLASS, "key", TranRawData.COLUMN_USER_ID, TranRawData.PAYLOAD_TYPE, TranRawData.PAYLOAD};

    public static class TranBaseColumns {
        public static final String COLUMN_CLASS_NAME = "className";
        public static final String COLUMN_ICON_RESID = "iconResId";
        public static final String COLUMN_INTENT_ACTION = "intentAction";
        public static final String COLUMN_INTENT_TARGET_CLASS = "intentTargetClass";
        public static final String COLUMN_INTENT_TARGET_PACKAGE = "intentTargetPackage";
        public static final String COLUMN_RANK = "rank";

        private TranBaseColumns() {
        }
    }

    public static final class TranRawData extends TranBaseColumns {
        public static final String COLUMN_ENTRIES = "entries";
        public static final String COLUMN_KEY = "key";
        public static final String COLUMN_KEYWORDS = "keywords";
        public static final String COLUMN_SCREEN_TITLE = "screenTitle";
        public static final String COLUMN_SUMMARY_OFF = "summaryOff";
        public static final String COLUMN_SUMMARY_ON = "summaryOn";
        public static final String COLUMN_TITLE = "title";
        public static final String COLUMN_USER_ID = "user_id";
        public static final String INDEXABLES_RAW = "indexables_raw";
        public static final String MIME_TYPE = "vnd.android.cursor.dir/indexables_raw";
        public static final String PAYLOAD = "payload";
        public static final String PAYLOAD_TYPE = "payload_type";

        private TranRawData() {
            super();
        }
    }
}
