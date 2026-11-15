.class public final synthetic Lu80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BaseActivity;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/dbdata/beans/ThemeData;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;ZLcom/transsion/dbdata/beans/ThemeData;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu80;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iput-boolean p2, p0, Lu80;->c:Z

    iput-object p3, p0, Lu80;->d:Lcom/transsion/dbdata/beans/ThemeData;

    iput-boolean p4, p0, Lu80;->e:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lu80;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-boolean v1, p0, Lu80;->c:Z

    iget-object v2, p0, Lu80;->d:Lcom/transsion/dbdata/beans/ThemeData;

    iget-boolean p0, p0, Lu80;->e:Z

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->K(Lcom/transsion/playercommon/activities/BaseActivity;ZLcom/transsion/dbdata/beans/ThemeData;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
