.class public final synthetic Lc42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8a$a;


# instance fields
.field public final synthetic a:Le42;

.field public final synthetic b:La9b;

.field public final synthetic c:Lxd3;


# direct methods
.method public synthetic constructor <init>(Le42;La9b;Lxd3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc42;->a:Le42;

    iput-object p2, p0, Lc42;->b:La9b;

    iput-object p3, p0, Lc42;->c:Lxd3;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc42;->a:Le42;

    iget-object v1, p0, Lc42;->b:La9b;

    iget-object p0, p0, Lc42;->c:Lxd3;

    invoke-static {v0, v1, p0}, Le42;->b(Le42;La9b;Lxd3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
