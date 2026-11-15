.class public final synthetic Lqz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc09$b;


# instance fields
.field public final synthetic a:Lc09;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lzx0$a;


# direct methods
.method public synthetic constructor <init>(Lc09;Ljava/util/Map;Lzx0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqz8;->a:Lc09;

    iput-object p2, p0, Lqz8;->b:Ljava/util/Map;

    iput-object p3, p0, Lqz8;->c:Lzx0$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqz8;->a:Lc09;

    iget-object v1, p0, Lqz8;->b:Ljava/util/Map;

    iget-object p0, p0, Lqz8;->c:Lzx0$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p0, p1}, Lc09;->J(Lc09;Ljava/util/Map;Lzx0$a;Landroid/database/Cursor;)Lzx0;

    move-result-object p0

    return-object p0
.end method
