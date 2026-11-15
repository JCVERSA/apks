package com.yandex.div.storage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.yandex.div.storage.database.StorageException;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\nB)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/yandex/div/storage/DivStorageErrorException;", "Lcom/yandex/div/storage/database/StorageException;", "", "errorMessage", "", "cause", "cardId", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div-storage_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivStorageErrorException extends StorageException {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:6:0x001d  */
        public final String b(String str, String str2) {
            String str3;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            if (str2 != null) {
                str3 = " Card id: " + str2;
                if (str3 == null) {
                    str3 = "";
                }
            } else {
                str3 = "";
            }
            sb.append(str3);
            return sb.toString();
        }

        public Companion() {
        }
    }

    public DivStorageErrorException() {
        this(null, null, null, 7, null);
    }

    public DivStorageErrorException(String str, Throwable th, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : th, (i & 4) != 0 ? null : str2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivStorageErrorException(String str, Throwable th, String str2) {
        super(INSTANCE.b(str, str2), th, str2);
        y45.j(str, "errorMessage");
    }
}
