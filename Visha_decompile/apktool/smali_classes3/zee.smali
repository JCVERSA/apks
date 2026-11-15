.class public final Lzee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmee;


# direct methods
.method public constructor <init>(Lmee;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzee;->a:Lmee;

    return-void
.end method

.method public static bridge synthetic a(Lzee;)Lmee;
    .locals 0

    iget-object p0, p0, Lzee;->a:Lmee;

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object p0, p0, Lzee;->a:Lmee;

    invoke-static {p0}, Lmee;->a(Lmee;)Lpee;

    move-result-object v0

    invoke-static {v0}, Lpee;->b(Lpee;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmee;->a(Lmee;)Lpee;

    move-result-object p0

    invoke-static {p0}, Lpee;->c(Lpee;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
