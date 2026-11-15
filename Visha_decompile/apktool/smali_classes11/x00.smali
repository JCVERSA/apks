.class public final synthetic Lx00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx00;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iput-object p2, p0, Lx00;->c:Ljava/lang/String;

    iput-object p3, p0, Lx00;->d:Ljava/lang/String;

    iput-object p4, p0, Lx00;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lx00;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iget-object v1, p0, Lx00;->c:Ljava/lang/String;

    iget-object v2, p0, Lx00;->d:Ljava/lang/String;

    iget-object p0, p0, Lx00;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
