.class public Lcom/transsion/playercommon/widgets/TabOperationBar$m$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/TabOperationBar$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/transsion/playercommon/widgets/TabOperationBar$m;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/TabOperationBar$m;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m$b;->b:Lcom/transsion/playercommon/widgets/TabOperationBar$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/TabOperationBar$m;Lcda;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar$m$b;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar$m;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/TabOperationBar$m$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m$b;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/TabOperationBar$m$b;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$m$b;->a:Landroid/widget/TextView;

    return-void
.end method
