.class public Lorg/bouncycastle/est/ESTException$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/ESTException;->getBody()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/bouncycastle/est/ESTException;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/est/ESTException;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/ESTException$a;->b:Lorg/bouncycastle/est/ESTException;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
