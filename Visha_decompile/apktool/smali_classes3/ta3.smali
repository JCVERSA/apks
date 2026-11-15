.class public final synthetic Lta3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/messaging/EnhancedIntentService;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Lzda;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta3;->b:Lcom/google/firebase/messaging/EnhancedIntentService;

    iput-object p2, p0, Lta3;->c:Landroid/content/Intent;

    iput-object p3, p0, Lta3;->d:Lzda;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lta3;->b:Lcom/google/firebase/messaging/EnhancedIntentService;

    iget-object v1, p0, Lta3;->c:Landroid/content/Intent;

    iget-object p0, p0, Lta3;->d:Lzda;

    invoke-static {v0, v1, p0}, Lcom/google/firebase/messaging/EnhancedIntentService;->a(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Lzda;)V

    return-void
.end method
