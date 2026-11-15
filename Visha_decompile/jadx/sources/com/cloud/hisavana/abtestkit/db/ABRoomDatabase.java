package com.cloud.hisavana.abtestkit.db;

import androidx.room.Database;
import androidx.room.RoomDatabase;
import defpackage.jjd;
import defpackage.nod;
import defpackage.nvd;
import defpackage.pod;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Database(entities = {nvd.class, nod.class}, exportSchema = false, version = 1)
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase;", "Landroidx/room/RoomDatabase;", MethodDecl.initName, "()V", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ABRoomDatabase extends RoomDatabase {
    public static volatile ABRoomDatabase a;

    public abstract jjd a();

    public abstract pod b();
}
