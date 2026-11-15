.class public abstract Lcom/transsion/utils/BaseConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;
    }
.end annotation


# static fields
.field public static a:I = 0x4d3

.field public static b:I = 0x4d8

.field public static final c:I

.field public static final d:I

.field public static e:[I

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Z

.field public static final i:Ljava/lang/String;

.field public static final j:Z

.field public static final k:Ljava/lang/String;

.field public static final l:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public static final m:Ljava/lang/Float;

.field public static final n:Ljava/lang/Float;

.field public static o:I

.field public static p:I

.field public static q:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x4d8

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/transsion/utils/BaseConstant;->c:I

    add-int/2addr v0, v1

    sput v0, Lcom/transsion/utils/BaseConstant;->d:I

    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    filled-new-array {v3, v1, v0, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/utils/BaseConstant;->e:[I

    sput-boolean v3, Lcom/transsion/utils/BaseConstant;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_0

    const-string v2, "/Download/VishaAudios"

    goto :goto_0

    :cond_0
    const-string v2, "/Vishaplayer/VishaAudios"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    sput-boolean v1, Lcom/transsion/utils/BaseConstant;->j:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/utils/BaseConstant;->k:Ljava/lang/String;

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sput-object v0, Lcom/transsion/utils/BaseConstant;->l:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/high16 v0, 0x44160000    # 600.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/transsion/utils/BaseConstant;->m:Ljava/lang/Float;

    const/high16 v0, 0x44c80000    # 1600.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/transsion/utils/BaseConstant;->n:Ljava/lang/Float;

    sput v3, Lcom/transsion/utils/BaseConstant;->o:I

    sput v1, Lcom/transsion/utils/BaseConstant;->p:I

    sput v1, Lcom/transsion/utils/BaseConstant;->q:I

    return-void
.end method
