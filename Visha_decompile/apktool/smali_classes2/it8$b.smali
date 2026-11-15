.class public final Lit8$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lorg/chromium/net/UrlRequest;

.field public final b:Lit8$c;


# direct methods
.method public constructor <init>(Lorg/chromium/net/UrlRequest;Lit8$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lit8$b;->a:Lorg/chromium/net/UrlRequest;

    iput-object p2, p0, Lit8$b;->b:Lit8$c;

    return-void
.end method


# virtual methods
.method public a()Lorg/chromium/net/UrlRequest;
    .locals 0

    iget-object p0, p0, Lit8$b;->a:Lorg/chromium/net/UrlRequest;

    return-object p0
.end method

.method public b()Lokhttp3/Response;
    .locals 0

    iget-object p0, p0, Lit8$b;->b:Lit8$c;

    invoke-interface {p0}, Lit8$c;->a()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
