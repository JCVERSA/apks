.class public Lcom/hunantv/imgo/log/c/a$c;
.super Lcom/hunantv/imgo/log/c/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/log/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/hunantv/imgo/log/c/a$c;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "20"

    invoke-static {v0, p0, p1}, Lcom/hunantv/imgo/log/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
