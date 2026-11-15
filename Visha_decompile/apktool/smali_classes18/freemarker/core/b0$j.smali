.class public Lfreemarker/core/b0$j;
.super Ljl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljl0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/Number;Lzfa;)Lzfa;
    .locals 0

    invoke-static {p1}, La47;->e(Ljava/lang/Number;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_0

    :cond_0
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_0
    return-object p0
.end method
