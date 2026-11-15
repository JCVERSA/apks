.class public abstract Lej8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llj8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Llj8;->a()Llj8$a;

    move-result-object v0

    sget-object v1, Lv20;->a:Lze1;

    invoke-virtual {v0, v1}, Llj8$a;->d(Lze1;)Llj8$a;

    move-result-object v0

    invoke-virtual {v0}, Llj8$a;->c()Llj8;

    move-result-object v0

    sput-object v0, Lej8;->a:Llj8;

    return-void
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 1

    sget-object v0, Lej8;->a:Llj8;

    invoke-virtual {v0, p0}, Llj8;->c(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
