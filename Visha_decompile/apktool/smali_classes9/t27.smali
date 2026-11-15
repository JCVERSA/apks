.class public final synthetic Lt27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc37;

.field public final synthetic c:Landroid/app/Notification;


# direct methods
.method public synthetic constructor <init>(Lc37;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt27;->b:Lc37;

    iput-object p2, p0, Lt27;->c:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lt27;->b:Lc37;

    iget-object p0, p0, Lt27;->c:Landroid/app/Notification;

    invoke-static {v0, p0}, Lc37;->g(Lc37;Landroid/app/Notification;)V

    return-void
.end method
