.class public final Ldld$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbl3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:Ldod;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldod$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldod$b;-><init>(Ldod$a;)V

    iput-object v0, p0, Ldld$b;->b:Ldod;

    iput-object p1, p0, Ldld$b;->a:Ljava/security/MessageDigest;

    return-void
.end method

.method public static synthetic a(Ldld$b;)Ljava/security/MessageDigest;
    .locals 0

    iget-object p0, p0, Ldld$b;->a:Ljava/security/MessageDigest;

    return-object p0
.end method


# virtual methods
.method public getVerifier()Ldod;
    .locals 0

    iget-object p0, p0, Ldld$b;->b:Ldod;

    return-object p0
.end method
