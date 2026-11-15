.class public final synthetic Lbu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ltn$b;

.field public final synthetic h:Z

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;IIILtn$b;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbu6;->b:Landroid/content/Context;

    iput-object p2, p0, Lbu6;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput p3, p0, Lbu6;->d:I

    iput p4, p0, Lbu6;->e:I

    iput p5, p0, Lbu6;->f:I

    iput-object p6, p0, Lbu6;->g:Ltn$b;

    iput-boolean p7, p0, Lbu6;->h:Z

    iput p8, p0, Lbu6;->i:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lbu6;->b:Landroid/content/Context;

    iget-object v1, p0, Lbu6;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, p0, Lbu6;->d:I

    iget v3, p0, Lbu6;->e:I

    iget v4, p0, Lbu6;->f:I

    iget-object v5, p0, Lbu6;->g:Ltn$b;

    iget-boolean v6, p0, Lbu6;->h:Z

    iget v7, p0, Lbu6;->i:I

    move-object v8, p1

    check-cast v8, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static/range {v0 .. v8}, Lcom/transsion/audio/widgets/MusicHelper;->e(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;IIILtn$b;ZILcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
