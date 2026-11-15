.class public final synthetic Lcom/transsion/vishaplayersdk/vkPlayer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/a;->b:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/a;->b:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->b(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;)V

    return-void
.end method
