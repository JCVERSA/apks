.class Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z

.field final synthetic sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;->Sj:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;->Sj:Z

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;->Sj:Z

    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->EjP(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
