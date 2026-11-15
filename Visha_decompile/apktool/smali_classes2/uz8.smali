.class public final synthetic Luz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc09$d;


# instance fields
.field public final synthetic a:Lu29;


# direct methods
.method public synthetic constructor <init>(Lu29;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz8;->a:Lu29;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Luz8;->a:Lu29;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method
