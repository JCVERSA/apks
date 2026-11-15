.class public final Lmbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzae;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmbe;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lu4h;)Lmbe;
    .locals 3

    new-instance v0, Lmbe;

    invoke-virtual {p0}, Lu4h;->u()I

    move-result v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1, v2}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmbe;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const p0, 0x6e727473

    return p0
.end method
