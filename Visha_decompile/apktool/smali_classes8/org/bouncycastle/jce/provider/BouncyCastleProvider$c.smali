.class public Lorg/bouncycastle/jce/provider/BouncyCastleProvider$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$c;->a:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$c;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$c;->a:Ljava/lang/String;

    return-object p0
.end method
