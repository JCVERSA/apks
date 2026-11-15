.class final Lcom/doman/core/ig/proxy/b$c;
.super Ltod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/proxy/b;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/b;[B)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/proxy/b$c;->a:Lcom/doman/core/ig/proxy/b;

    invoke-direct {p0, p2}, Ltod;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final setDuplicate(Z)V
    .locals 0

    invoke-super {p0, p1}, Ltod;->setDuplicate(Z)V

    return-void
.end method
