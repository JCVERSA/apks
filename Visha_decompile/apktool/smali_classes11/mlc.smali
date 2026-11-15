.class public final synthetic Lmlc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/playercommon/activities/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;ZLcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmlc;->b:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iput-boolean p2, p0, Lmlc;->c:Z

    iput-object p3, p0, Lmlc;->d:Lcom/transsion/playercommon/activities/BaseActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmlc;->b:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget-boolean v1, p0, Lmlc;->c:Z

    iget-object p0, p0, Lmlc;->d:Lcom/transsion/playercommon/activities/BaseActivity;

    check-cast p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;ZLcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
