.class public final synthetic Lsa3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpe7;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/EnhancedIntentService;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa3;->a:Lcom/google/firebase/messaging/EnhancedIntentService;

    iput-object p2, p0, Lsa3;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onComplete(Lxda;)V
    .locals 1

    iget-object v0, p0, Lsa3;->a:Lcom/google/firebase/messaging/EnhancedIntentService;

    iget-object p0, p0, Lsa3;->b:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->b(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Lxda;)V

    return-void
.end method
