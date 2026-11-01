package com.wandoujia.download.rpc;

import java.util.Map;
import o.cn3;

public interface IBlockDownloadTask {

    public enum BlockParentStatus {
        SUCCESS(0),
        FAILED(1),
        PENDING(2),
        PAUSED(3),
        RUNNING(4);

        private final int priority;

        BlockParentStatus(int i) {
            this.priority = i;
        }

        public static int b(BlockParentStatus blockParentStatus) {
            return blockParentStatus.c();
        }

        public final int c() {
            return this.priority;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'PENDING' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class BlockStatus {
        private static final BlockStatus[] $VALUES;
        public static final BlockStatus CONNECTION_TIMEOUT;
        public static final BlockStatus CRC_VERIFY_ERROR;
        public static final BlockStatus DOWNLOADED_BYTES_OVERFLOW;
        public static final BlockStatus DOWNLOAD_SIZE_UNKNOWN;
        public static final BlockStatus EXCEED_MAX_RETRY_TIMES;
        public static final BlockStatus FILE_ERROR;
        public static final BlockStatus FILE_NOT_FOUND;
        public static final BlockStatus HTTP_ERROR;
        public static final BlockStatus INSUFFICIENT_STORAGE;
        public static final BlockStatus INTERNET_NO_ACCESS;
        public static final BlockStatus PENDING;
        public static final BlockStatus QUEUED_FOR_MEDIA;
        public static final BlockStatus QUEUED_FOR_WIFI_OR_USB;
        public static final BlockStatus RESOLVE_REDIRECT_URL_FAILED;
        public static final BlockStatus RUNNING;
        public static final BlockStatus STORAGE_NOT_READY;
        public static final BlockStatus SUCCESS = new BlockStatus("SUCCESS", 0, BlockParentStatus.SUCCESS);
        public static final BlockStatus TOO_MANY_REDIRECTS;
        public static final BlockStatus UMP_ERROR;
        public static final BlockStatus UNKNOWN_ERROR;
        public static final BlockStatus URL_NULL_ERROR;
        private final BlockParentStatus parentStatus;

        static {
            BlockParentStatus blockParentStatus = BlockParentStatus.PAUSED;
            PENDING = new BlockStatus("PENDING", 1, blockParentStatus);
            RUNNING = new BlockStatus("RUNNING", 2, BlockParentStatus.RUNNING);
            QUEUED_FOR_WIFI_OR_USB = new BlockStatus("QUEUED_FOR_WIFI_OR_USB", 3, blockParentStatus);
            QUEUED_FOR_MEDIA = new BlockStatus("QUEUED_FOR_MEDIA", 4, blockParentStatus);
            BlockParentStatus blockParentStatus2 = BlockParentStatus.FAILED;
            CRC_VERIFY_ERROR = new BlockStatus("CRC_VERIFY_ERROR", 5, blockParentStatus2);
            TOO_MANY_REDIRECTS = new BlockStatus("TOO_MANY_REDIRECTS", 6, blockParentStatus2);
            RESOLVE_REDIRECT_URL_FAILED = new BlockStatus("RESOLVE_REDIRECT_URL_FAILED", 7, blockParentStatus2);
            EXCEED_MAX_RETRY_TIMES = new BlockStatus("EXCEED_MAX_RETRY_TIMES", 8, blockParentStatus2);
            DOWNLOAD_SIZE_UNKNOWN = new BlockStatus("DOWNLOAD_SIZE_UNKNOWN", 9, blockParentStatus2);
            DOWNLOADED_BYTES_OVERFLOW = new BlockStatus("DOWNLOADED_BYTES_OVERFLOW", 10, blockParentStatus2);
            FILE_NOT_FOUND = new BlockStatus("FILE_NOT_FOUND", 11, blockParentStatus2);
            STORAGE_NOT_READY = new BlockStatus("STORAGE_NOT_READY", 12, blockParentStatus2);
            INSUFFICIENT_STORAGE = new BlockStatus("INSUFFICIENT_STORAGE", 13, blockParentStatus2);
            FILE_ERROR = new BlockStatus("FILE_ERROR", 14, blockParentStatus2);
            HTTP_ERROR = new BlockStatus("HTTP_ERROR", 15, blockParentStatus2);
            URL_NULL_ERROR = new BlockStatus("URL_NULL_ERROR", 16, blockParentStatus2);
            CONNECTION_TIMEOUT = new BlockStatus("CONNECTION_TIMEOUT", 17, blockParentStatus2);
            INTERNET_NO_ACCESS = new BlockStatus("INTERNET_NO_ACCESS", 18, blockParentStatus2);
            UMP_ERROR = new BlockStatus("UMP_ERROR", 19, blockParentStatus2);
            UNKNOWN_ERROR = new BlockStatus("UNKNOWN_ERROR", 20, blockParentStatus2);
            $VALUES = a();
        }

        private BlockStatus(String str, int i, BlockParentStatus blockParentStatus) {
            super(str, i);
            this.parentStatus = blockParentStatus;
        }

        public static BlockStatus[] a() {
            return new BlockStatus[]{SUCCESS, PENDING, RUNNING, QUEUED_FOR_WIFI_OR_USB, QUEUED_FOR_MEDIA, CRC_VERIFY_ERROR, TOO_MANY_REDIRECTS, RESOLVE_REDIRECT_URL_FAILED, EXCEED_MAX_RETRY_TIMES, DOWNLOAD_SIZE_UNKNOWN, DOWNLOADED_BYTES_OVERFLOW, FILE_NOT_FOUND, STORAGE_NOT_READY, INSUFFICIENT_STORAGE, FILE_ERROR, HTTP_ERROR, URL_NULL_ERROR, CONNECTION_TIMEOUT, INTERNET_NO_ACCESS, UMP_ERROR, UNKNOWN_ERROR};
        }

        public static BlockStatus valueOf(String str) {
            return (BlockStatus) Enum.valueOf(BlockStatus.class, str);
        }

        public static BlockStatus[] values() {
            return (BlockStatus[]) $VALUES.clone();
        }

        public BlockParentStatus getParentStatus() {
            return this.parentStatus;
        }

        public int getPriority() {
            return BlockParentStatus.b(this.parentStatus);
        }
    }

    int c();

    void d(g gVar, cn3 cn3Var);

    void f(Map map);

    BlockStatus getStatus();

    int l();

    void stop();
}
