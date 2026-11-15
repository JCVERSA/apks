.class public final synthetic Lyz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc09$b;


# instance fields
.field public final synthetic a:Lc09;

.field public final synthetic b:Lxd3;

.field public final synthetic c:La9b;


# direct methods
.method public synthetic constructor <init>(Lc09;Lxd3;La9b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyz8;->a:Lc09;

    iput-object p2, p0, Lyz8;->b:Lxd3;

    iput-object p3, p0, Lyz8;->c:La9b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyz8;->a:Lc09;

    iget-object v1, p0, Lyz8;->b:Lxd3;

    iget-object p0, p0, Lyz8;->c:La9b;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p0, p1}, Lc09;->L(Lc09;Lxd3;La9b;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
