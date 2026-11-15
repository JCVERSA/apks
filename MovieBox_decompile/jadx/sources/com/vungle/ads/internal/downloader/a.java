package com.vungle.ads.internal.downloader;

import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public interface a {

    public static final class C0674a {
        public static final C0675a Companion = new C0675a(null);
        public static final int DEFAULT_SERVER_CODE = -1;
        private final Throwable cause;

        @b
        private final int reason;
        private final int serverCode;

        public static final class C0675a {
            public C0675a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0675a() {
            }
        }

        @Retention(RetentionPolicy.RUNTIME)
        public @interface b {
            public static final C0676a Companion = C0676a.$$INSTANCE;

            public static final class C0676a {
                private static int CONNECTION_ERROR;
                static final C0676a $$INSTANCE = new C0676a();
                private static int REQUEST_ERROR = 1;
                private static int DISK_ERROR = 2;
                private static int FILE_NOT_FOUND_ERROR = 3;
                private static int INTERNAL_ERROR = 4;

                private C0676a() {
                }

                public final int getCONNECTION_ERROR() {
                    return CONNECTION_ERROR;
                }

                public final int getDISK_ERROR() {
                    return DISK_ERROR;
                }

                public final int getFILE_NOT_FOUND_ERROR() {
                    return FILE_NOT_FOUND_ERROR;
                }

                public final int getINTERNAL_ERROR() {
                    return INTERNAL_ERROR;
                }

                public final int getREQUEST_ERROR() {
                    return REQUEST_ERROR;
                }

                public final void setCONNECTION_ERROR(int i10) {
                    CONNECTION_ERROR = i10;
                }

                public final void setDISK_ERROR(int i10) {
                    DISK_ERROR = i10;
                }

                public final void setFILE_NOT_FOUND_ERROR(int i10) {
                    FILE_NOT_FOUND_ERROR = i10;
                }

                public final void setINTERNAL_ERROR(int i10) {
                    INTERNAL_ERROR = i10;
                }

                public final void setREQUEST_ERROR(int i10) {
                    REQUEST_ERROR = i10;
                }
            }
        }

        public C0674a(int i10, Throwable cause, int i11) {
            Intrinsics.h(cause, "cause");
            this.serverCode = i10;
            this.cause = cause;
            this.reason = i11;
        }

        public final Throwable getCause() {
            return this.cause;
        }

        public final int getReason() {
            return this.reason;
        }

        public final int getServerCode() {
            return this.serverCode;
        }
    }

    public static final class b {
        public static final C0677a Companion = new C0677a(null);
        private int progressPercent;
        private long sizeBytes;
        private long startBytes;
        private int status;
        private long timestampDownloadStart;

        public static final class C0677a {
            public C0677a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final b copy(b progress) {
                Intrinsics.h(progress, "progress");
                b bVar = new b();
                bVar.setStatus(progress.getStatus());
                bVar.setProgressPercent(progress.getProgressPercent());
                bVar.setTimestampDownloadStart(progress.getTimestampDownloadStart());
                bVar.setSizeBytes(progress.getSizeBytes());
                bVar.setStartBytes(progress.getStartBytes());
                return bVar;
            }

            private C0677a() {
            }
        }

        @Retention(RetentionPolicy.RUNTIME)
        public @interface InterfaceC0678b {
            public static final C0679a Companion = C0679a.$$INSTANCE;

            public static final class C0679a {
                private static int STARTED;
                static final C0679a $$INSTANCE = new C0679a();
                private static int IN_PROGRESS = 1;
                private static int PAUSED = 2;
                private static int CANCELLED = 3;
                private static int DONE = 4;
                private static int LOST_CONNECTION = 5;
                private static int STATE_CHANGED = 6;
                private static int ERROR = 7;

                private C0679a() {
                }

                public final int getCANCELLED() {
                    return CANCELLED;
                }

                public final int getDONE() {
                    return DONE;
                }

                public final int getERROR() {
                    return ERROR;
                }

                public final int getIN_PROGRESS() {
                    return IN_PROGRESS;
                }

                public final int getLOST_CONNECTION() {
                    return LOST_CONNECTION;
                }

                public final int getPAUSED() {
                    return PAUSED;
                }

                public final int getSTARTED() {
                    return STARTED;
                }

                public final int getSTATE_CHANGED() {
                    return STATE_CHANGED;
                }

                public final void setCANCELLED(int i10) {
                    CANCELLED = i10;
                }

                public final void setDONE(int i10) {
                    DONE = i10;
                }

                public final void setERROR(int i10) {
                    ERROR = i10;
                }

                public final void setIN_PROGRESS(int i10) {
                    IN_PROGRESS = i10;
                }

                public final void setLOST_CONNECTION(int i10) {
                    LOST_CONNECTION = i10;
                }

                public final void setPAUSED(int i10) {
                    PAUSED = i10;
                }

                public final void setSTARTED(int i10) {
                    STARTED = i10;
                }

                public final void setSTATE_CHANGED(int i10) {
                    STATE_CHANGED = i10;
                }
            }
        }

        @InterfaceC0678b
        public static void getStatus$annotations() {
        }

        public final int getProgressPercent() {
            return this.progressPercent;
        }

        public final long getSizeBytes() {
            return this.sizeBytes;
        }

        public final long getStartBytes() {
            return this.startBytes;
        }

        public final int getStatus() {
            return this.status;
        }

        public final long getTimestampDownloadStart() {
            return this.timestampDownloadStart;
        }

        public final void setProgressPercent(int i10) {
            this.progressPercent = i10;
        }

        public final void setSizeBytes(long j10) {
            this.sizeBytes = j10;
        }

        public final void setStartBytes(long j10) {
            this.startBytes = j10;
        }

        public final void setStatus(int i10) {
            this.status = i10;
        }

        public final void setTimestampDownloadStart(long j10) {
            this.timestampDownloadStart = j10;
        }
    }

    void onError(C0674a c0674a, DownloadRequest downloadRequest);

    void onSuccess(File file, DownloadRequest downloadRequest);
}
