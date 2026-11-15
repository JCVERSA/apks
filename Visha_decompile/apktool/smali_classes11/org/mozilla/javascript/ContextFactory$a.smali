.class public Lorg/mozilla/javascript/ContextFactory$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/ContextFactory;->createClassLoader(Ljava/lang/ClassLoader;)Lorg/mozilla/javascript/GeneratedClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ClassLoader;

.field public final synthetic b:Lorg/mozilla/javascript/ContextFactory;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/ContextFactory;Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ContextFactory$a;->b:Lorg/mozilla/javascript/ContextFactory;

    iput-object p2, p0, Lorg/mozilla/javascript/ContextFactory$a;->a:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/mozilla/javascript/DefiningClassLoader;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/DefiningClassLoader;

    iget-object p0, p0, Lorg/mozilla/javascript/ContextFactory$a;->a:Ljava/lang/ClassLoader;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/DefiningClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory$a;->a()Lorg/mozilla/javascript/DefiningClassLoader;

    move-result-object p0

    return-object p0
.end method
