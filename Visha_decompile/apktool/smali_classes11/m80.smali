.class public final synthetic Lm80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwn9$a;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/activities/BaseActivity;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/dbdata/beans/ThemeData;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;ZLcom/transsion/dbdata/beans/ThemeData;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm80;->a:Lcom/transsion/playercommon/activities/BaseActivity;

    iput-boolean p2, p0, Lm80;->b:Z

    iput-object p3, p0, Lm80;->c:Lcom/transsion/dbdata/beans/ThemeData;

    iput p4, p0, Lm80;->d:I

    iput p5, p0, Lm80;->e:I

    iput-boolean p6, p0, Lm80;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lm80;->a:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-boolean v1, p0, Lm80;->b:Z

    iget-object v2, p0, Lm80;->c:Lcom/transsion/dbdata/beans/ThemeData;

    iget v3, p0, Lm80;->d:I

    iget v4, p0, Lm80;->e:I

    iget-boolean v5, p0, Lm80;->f:Z

    invoke-static/range {v0 .. v5}, Lcom/transsion/playercommon/activities/BaseActivity;->N(Lcom/transsion/playercommon/activities/BaseActivity;ZLcom/transsion/dbdata/beans/ThemeData;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
