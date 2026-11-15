package com.transsion.cloud_drive.transfer.internal.impl.database;

import android.content.ContentValues;
import android.database.Cursor;
import defpackage.ay2;
import defpackage.by2;
import defpackage.q5b;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class a implements ay2 {
    public final q5b a;

    public a(q5b q5bVar) {
        y45.j(q5bVar, "dbHelper");
        this.a = q5bVar;
    }

    @Override
    public List a(String str) {
        y45.j(str, "taskId");
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = this.a.getWritableDatabase().query("DownloadBlockInfo", DownloadBlockColumns.INSTANCE.a(), DownloadBlockColumns.TASK_ID.getColumn() + "=?", new String[]{str}, null, null, DownloadBlockColumns.CURRENT.getColumn() + " ASC");
        if (cursorQuery != null) {
            if (cursorQuery.moveToFirst()) {
                do {
                    arrayList.add(new by2(DownloadBlockColumns.ID.getLong(cursorQuery), DownloadBlockColumns.TASK_ID.getString(cursorQuery), DownloadBlockColumns.CURRENT.getLong(cursorQuery), DownloadBlockColumns.OFFSET.getLong(cursorQuery), DownloadBlockColumns.START.getLong(cursorQuery), DownloadBlockColumns.END.getLong(cursorQuery)));
                } while (cursorQuery.moveToNext());
            }
            cursorQuery.close();
        }
        return arrayList;
    }

    @Override
    public void b(by2 by2Var) {
        y45.j(by2Var, "info");
        ContentValues contentValues = new ContentValues();
        contentValues.put(DownloadBlockColumns.OFFSET.getColumn(), Long.valueOf(by2Var.d()));
        contentValues.put(DownloadBlockColumns.START.getColumn(), Long.valueOf(by2Var.e()));
        contentValues.put(DownloadBlockColumns.END.getColumn(), Long.valueOf(by2Var.b()));
        this.a.getWritableDatabase().update("DownloadBlockInfo", contentValues, DownloadBlockColumns.ID.getColumn() + "=?", new String[]{String.valueOf(by2Var.c())});
    }

    @Override
    public long c(by2 by2Var) {
        y45.j(by2Var, "info");
        ContentValues contentValues = new ContentValues();
        contentValues.put(DownloadBlockColumns.TASK_ID.getColumn(), by2Var.f());
        contentValues.put(DownloadBlockColumns.CURRENT.getColumn(), Long.valueOf(by2Var.a()));
        contentValues.put(DownloadBlockColumns.OFFSET.getColumn(), Long.valueOf(by2Var.d()));
        contentValues.put(DownloadBlockColumns.START.getColumn(), Long.valueOf(by2Var.e()));
        contentValues.put(DownloadBlockColumns.END.getColumn(), Long.valueOf(by2Var.b()));
        return this.a.getWritableDatabase().insert("DownloadBlockInfo", null, contentValues);
    }

    @Override
    public void delete(String str) {
        y45.j(str, "taskId");
        this.a.getWritableDatabase().delete("DownloadBlockInfo", DownloadBlockColumns.TASK_ID.getColumn() + "=?", new String[]{str});
    }
}
