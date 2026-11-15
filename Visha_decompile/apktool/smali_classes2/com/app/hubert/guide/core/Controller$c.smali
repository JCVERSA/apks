.class public Lcom/app/hubert/guide/core/Controller$c;
.super Lr54;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/Controller;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/app/hubert/guide/core/Controller;


# direct methods
.method public constructor <init>(Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller$c;->a:Lcom/app/hubert/guide/core/Controller;

    invoke-direct {p0}, Lr54;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "ListenerFragment.onDestroyView"

    invoke-static {v0}, Ldq5;->c(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller$c;->a:Lcom/app/hubert/guide/core/Controller;

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/Controller;->l()V

    return-void
.end method
