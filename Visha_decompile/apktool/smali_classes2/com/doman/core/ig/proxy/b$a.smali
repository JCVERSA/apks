.class final Lcom/doman/core/ig/proxy/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/doman/core/ig/proxy/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/proxy/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ltod;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/b;Ljava/lang/String;Ljava/lang/String;Ltod;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/proxy/b$a;->a:Lcom/doman/core/ig/proxy/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/doman/core/ig/proxy/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/doman/core/ig/proxy/b$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/doman/core/ig/proxy/b$a;->d:Ltod;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ltod;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/b$a;->d:Ltod;

    return-object p0
.end method
