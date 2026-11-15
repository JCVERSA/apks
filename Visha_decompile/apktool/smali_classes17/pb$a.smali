.class public final Lpb$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpb;-><init>(Landroid/content/Context;Ljava/lang/String;ILzs1$a;Lzs1$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lzs1$a;

.field public final synthetic c:Lpb;

.field public final synthetic d:Lzs1$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILzs1$a;Lpb;Lzs1$c;)V
    .locals 0

    iput-object p4, p0, Lpb$a;->b:Lzs1$a;

    iput-object p5, p0, Lpb$a;->c:Lpb;

    iput-object p6, p0, Lpb$a;->d:Lzs1$c;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "db"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpb$a;->b:Lzs1$a;

    iget-object p0, p0, Lpb$a;->c:Lpb;

    invoke-virtual {p0, p1}, Lpb;->c(Landroid/database/sqlite/SQLiteDatabase;)Lzs1$b;

    move-result-object p0

    invoke-interface {v0, p0}, Lzs1$a;->a(Lzs1$b;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpb$a;->d:Lzs1$c;

    iget-object p0, p0, Lpb$a;->c:Lpb;

    invoke-virtual {p0, p1}, Lpb;->c(Landroid/database/sqlite/SQLiteDatabase;)Lzs1$b;

    move-result-object p0

    invoke-interface {v0, p0, p2, p3}, Lzs1$c;->a(Lzs1$b;II)V

    return-void
.end method
