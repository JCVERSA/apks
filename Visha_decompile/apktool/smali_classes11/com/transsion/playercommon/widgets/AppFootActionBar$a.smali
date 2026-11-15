.class public Lcom/transsion/playercommon/widgets/AppFootActionBar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls08;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic f:Lcom/transsion/playercommon/widgets/AppFootActionBar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AppFootActionBar;IILjava/util/ArrayList;ZLcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->f:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iput p2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->a:I

    iput p3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->b:I

    iput-object p4, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->c:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->d:Z

    iput-object p6, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->e:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->a:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->f:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->c:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->d:Z

    invoke-virtual {v1, v0, v2, p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->f:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->c:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->d:Z

    invoke-virtual {v0, v1, p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->delete(Ljava/util/ArrayList;Z)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preRename operateCancel, path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;->e:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/utils/BaseConstant;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/utils/BaseConstant;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppFootActionBar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/transsion/playercommon/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method
