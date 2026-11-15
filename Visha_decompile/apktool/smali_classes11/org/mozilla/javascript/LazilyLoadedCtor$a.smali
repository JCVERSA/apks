.class public Lorg/mozilla/javascript/LazilyLoadedCtor$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/LazilyLoadedCtor;->buildValue()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/mozilla/javascript/LazilyLoadedCtor;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/LazilyLoadedCtor;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/LazilyLoadedCtor$a;->a:Lorg/mozilla/javascript/LazilyLoadedCtor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/LazilyLoadedCtor$a;->a:Lorg/mozilla/javascript/LazilyLoadedCtor;

    invoke-static {p0}, Lorg/mozilla/javascript/LazilyLoadedCtor;->access$000(Lorg/mozilla/javascript/LazilyLoadedCtor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
