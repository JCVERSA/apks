.class public abstract Ll08;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll08$a;
    }
.end annotation


# static fields
.field public static final a:Lq2e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh2e;

    invoke-direct {v0}, Lh2e;-><init>()V

    sput-object v0, Ll08;->a:Lq2e;

    return-void
.end method

.method public static a(Lk08;Ll08$a;)Lxda;
    .locals 3

    sget-object v0, Ll08;->a:Lq2e;

    new-instance v1, Lzda;

    invoke-direct {v1}, Lzda;-><init>()V

    new-instance v2, Ll2e;

    invoke-direct {v2, p0, v1, p1, v0}, Ll2e;-><init>(Lk08;Lzda;Ll08$a;Lq2e;)V

    invoke-virtual {p0, v2}, Lk08;->b(Lk08$a;)V

    invoke-virtual {v1}, Lzda;->a()Lxda;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lk08;)Lxda;
    .locals 1

    new-instance v0, Lo2e;

    invoke-direct {v0}, Lo2e;-><init>()V

    invoke-static {p0, v0}, Ll08;->a(Lk08;Ll08$a;)Lxda;

    move-result-object p0

    return-object p0
.end method
