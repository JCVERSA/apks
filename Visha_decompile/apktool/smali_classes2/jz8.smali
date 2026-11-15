.class public final synthetic Ljz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc09$b;


# instance fields
.field public final synthetic a:Lc09;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lzx0$a;


# direct methods
.method public synthetic constructor <init>(Lc09;Ljava/lang/String;Ljava/util/Map;Lzx0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljz8;->a:Lc09;

    iput-object p2, p0, Ljz8;->b:Ljava/lang/String;

    iput-object p3, p0, Ljz8;->c:Ljava/util/Map;

    iput-object p4, p0, Ljz8;->d:Lzx0$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ljz8;->a:Lc09;

    iget-object v1, p0, Ljz8;->b:Ljava/lang/String;

    iget-object v2, p0, Ljz8;->c:Ljava/util/Map;

    iget-object p0, p0, Ljz8;->d:Lzx0$a;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p0, p1}, Lc09;->U(Lc09;Ljava/lang/String;Ljava/util/Map;Lzx0$a;Landroid/database/sqlite/SQLiteDatabase;)Lzx0;

    move-result-object p0

    return-object p0
.end method
