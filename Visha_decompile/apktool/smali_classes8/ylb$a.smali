.class public Lylb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lylb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lylb$a;->a:I

    iput-object p2, p0, Lylb$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lylb$a;->c:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lylb$a;->b:Ljava/lang/String;

    return-object p0
.end method
