package com.transsion.cloud_drive.transfer.internal.impl.database;

import android.content.ContentValues;
import android.database.Cursor;
import com.transsion.cloud_drive.transfer.internal.upload.UploadState;
import defpackage.mhb;
import defpackage.q5b;
import defpackage.thb;
import defpackage.y45;

public final class b implements thb {
    public final q5b a;

    public b(q5b q5bVar) {
        y45.j(q5bVar, "dbHelper");
        this.a = q5bVar;
    }

    @Override
    public mhb a(String str) {
        y45.j(str, "taskId");
        Cursor cursorQuery = this.a.getWritableDatabase().query("UploadBlockInfo", UploadSerialInfoColumns.INSTANCE.a(), UploadSerialInfoColumns.TASK_ID.getColumn() + "=?", new String[]{str}, null, null, null);
        mhb mhbVar = null;
        if (cursorQuery != null) {
            if (cursorQuery.moveToFirst()) {
                do {
                    mhbVar = new mhb();
                    mhbVar.o(UploadSerialInfoColumns.ID.getLong(cursorQuery));
                    mhbVar.q(UploadSerialInfoColumns.TASK_ID.getString(cursorQuery));
                    mhbVar.l(UploadSerialInfoColumns.CURRENT.getInt(cursorQuery));
                    mhbVar.m(UploadSerialInfoColumns.FILE_ID.getString(cursorQuery));
                    mhbVar.r(UploadSerialInfoColumns.UPLOAD_ID.getString(cursorQuery));
                    mhbVar.p(((UploadState[]) UploadState.getEntries().toArray(new UploadState[0]))[UploadSerialInfoColumns.STATE.getInt(cursorQuery)]);
                    mhbVar.j(UploadSerialInfoColumns.CRC_ALGORITHM.getString(cursorQuery));
                    mhbVar.k(UploadSerialInfoColumns.CRC_VALUE.getString(cursorQuery));
                    mhbVar.n(UploadSerialInfoColumns.FILE_MODIFIED_TIME.getLong(cursorQuery));
                } while (cursorQuery.moveToNext());
            }
            cursorQuery.close();
        }
        return mhbVar;
    }

    @Override
    public void b(mhb mhbVar) {
        y45.j(mhbVar, "info");
        ContentValues contentValues = new ContentValues();
        contentValues.put(UploadSerialInfoColumns.TASK_ID.getColumn(), mhbVar.h());
        contentValues.put(UploadSerialInfoColumns.CURRENT.getColumn(), Integer.valueOf(mhbVar.c()));
        contentValues.put(UploadSerialInfoColumns.FILE_ID.getColumn(), mhbVar.d());
        contentValues.put(UploadSerialInfoColumns.UPLOAD_ID.getColumn(), mhbVar.i());
        contentValues.put(UploadSerialInfoColumns.STATE.getColumn(), Integer.valueOf(mhbVar.g().ordinal()));
        contentValues.put(UploadSerialInfoColumns.CRC_ALGORITHM.getColumn(), mhbVar.a());
        contentValues.put(UploadSerialInfoColumns.CRC_VALUE.getColumn(), mhbVar.b());
        contentValues.put(UploadSerialInfoColumns.FILE_MODIFIED_TIME.getColumn(), Long.valueOf(mhbVar.e()));
        mhbVar.o(this.a.getWritableDatabase().insert("UploadBlockInfo", null, contentValues));
    }

    @Override
    public void c(mhb mhbVar) {
        y45.j(mhbVar, "info");
        ContentValues contentValues = new ContentValues();
        contentValues.put(UploadSerialInfoColumns.CURRENT.getColumn(), Integer.valueOf(mhbVar.c()));
        contentValues.put(UploadSerialInfoColumns.FILE_ID.getColumn(), mhbVar.d());
        contentValues.put(UploadSerialInfoColumns.UPLOAD_ID.getColumn(), mhbVar.i());
        contentValues.put(UploadSerialInfoColumns.STATE.getColumn(), Integer.valueOf(mhbVar.g().ordinal()));
        contentValues.put(UploadSerialInfoColumns.CRC_ALGORITHM.getColumn(), mhbVar.a());
        contentValues.put(UploadSerialInfoColumns.CRC_VALUE.getColumn(), mhbVar.b());
        contentValues.put(UploadSerialInfoColumns.FILE_MODIFIED_TIME.getColumn(), Long.valueOf(mhbVar.e()));
        this.a.getWritableDatabase().update("UploadBlockInfo", contentValues, UploadSerialInfoColumns.ID.getColumn() + "=?", new String[]{String.valueOf(mhbVar.f())});
    }

    @Override
    public void delete(String str) {
        y45.j(str, "taskId");
        this.a.getWritableDatabase().delete("UploadBlockInfo", UploadSerialInfoColumns.TASK_ID.getColumn() + "=?", new String[]{str});
    }
}
