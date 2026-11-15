package com.transsion.cloud_drive.transfer.internal.impl.database;

import android.database.Cursor;
import androidx.core.provider.FontsContractCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.livecaption.constant.ICode;
import defpackage.db3;
import defpackage.sm1;
import defpackage.y45;
import java.util.ArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0011\b\u0080\u0081\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001d¨\u0006\u001e"}, d2 = {"Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;", "", "", "column", MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Landroid/database/Cursor;", "cursor", "getString", "(Landroid/database/Cursor;)Ljava/lang/String;", "", "getInt", "(Landroid/database/Cursor;)I", "", "getLong", "(Landroid/database/Cursor;)J", "Ljava/lang/String;", "getColumn", "()Ljava/lang/String;", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, DataTypes.OBJ_ID, "TASK_ID", "FILE_ID", "UPLOAD_ID", "CURRENT", "STATE", "CRC_ALGORITHM", "CRC_VALUE", "FILE_MODIFIED_TIME", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum UploadSerialInfoColumns {
    ID("_id"),
    TASK_ID("task_id"),
    FILE_ID(FontsContractCompat.Columns.FILE_ID),
    UPLOAD_ID("upload_id"),
    CURRENT("current"),
    STATE(ICode.CALL.CALL_KEY_STATE),
    CRC_ALGORITHM("crc_algorithm"),
    CRC_VALUE("crc_value"),
    FILE_MODIFIED_TIME("file_modified_time");

    private final String column;
    private static final db3 $ENTRIES = kotlin.enums.a.a(values());

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String[] a() {
            UploadSerialInfoColumns[] uploadSerialInfoColumnsArrValues = UploadSerialInfoColumns.values();
            ArrayList arrayList = new ArrayList(uploadSerialInfoColumnsArrValues.length);
            for (UploadSerialInfoColumns uploadSerialInfoColumns : uploadSerialInfoColumnsArrValues) {
                arrayList.add(uploadSerialInfoColumns.getColumn());
            }
            return (String[]) arrayList.toArray(new String[0]);
        }

        public Companion() {
        }
    }

    UploadSerialInfoColumns(String str) {
        this.column = str;
    }

    public static db3 getEntries() {
        return $ENTRIES;
    }

    public final String getColumn() {
        return this.column;
    }

    public final int getInt(Cursor cursor) {
        y45.j(cursor, "cursor");
        return sm1.a(cursor, ordinal(), 0);
    }

    public final long getLong(Cursor cursor) {
        y45.j(cursor, "cursor");
        return sm1.b(cursor, ordinal(), 0L);
    }

    public final String getString(Cursor cursor) {
        y45.j(cursor, "cursor");
        return sm1.c(cursor, ordinal(), "");
    }
}
