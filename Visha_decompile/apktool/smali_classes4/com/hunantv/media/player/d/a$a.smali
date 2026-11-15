.class public Lcom/hunantv/media/player/d/a$a;
.super Lcom/hunantv/media/player/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field private h:[I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 14

    move-object v0, p0

    const/16 v11, 0x3026

    const/16 v13, 0x3038

    const/16 v1, 0x3024

    const/16 v3, 0x3023

    const/16 v5, 0x3022

    const/16 v7, 0x3021

    const/16 v9, 0x3025

    move v2, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v10, p5

    move/from16 v12, p6

    filled-new-array/range {v1 .. v13}, [I

    move-result-object v1

    move/from16 v2, p7

    invoke-direct {p0, v1, v2}, Lcom/hunantv/media/player/d/a;-><init>([II)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/hunantv/media/player/d/a$a;->h:[I

    move v1, p1

    iput v1, v0, Lcom/hunantv/media/player/d/a$a;->b:I

    move/from16 v1, p2

    iput v1, v0, Lcom/hunantv/media/player/d/a$a;->c:I

    move/from16 v1, p3

    iput v1, v0, Lcom/hunantv/media/player/d/a$a;->d:I

    move/from16 v1, p4

    iput v1, v0, Lcom/hunantv/media/player/d/a$a;->e:I

    move/from16 v1, p5

    iput v1, v0, Lcom/hunantv/media/player/d/a$a;->f:I

    move/from16 v1, p6

    iput v1, v0, Lcom/hunantv/media/player/d/a$a;->g:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/d/a$a;->h:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/d/a$a;->h:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_0
    return p5
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .line 2
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v8, p3, v1

    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/hunantv/media/player/d/a$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3026

    invoke-direct/range {v2 .. v7}, Lcom/hunantv/media/player/d/a$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    iget v3, p0, Lcom/hunantv/media/player/d/a$a;->f:I

    if-lt v9, v3, :cond_0

    iget v3, p0, Lcom/hunantv/media/player/d/a$a;->g:I

    if-lt v2, v3, :cond_0

    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/hunantv/media/player/d/a$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3023

    invoke-direct/range {v2 .. v7}, Lcom/hunantv/media/player/d/a$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v6, 0x3022

    invoke-direct/range {v2 .. v7}, Lcom/hunantv/media/player/d/a$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v6, 0x3021

    invoke-direct/range {v2 .. v7}, Lcom/hunantv/media/player/d/a$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    iget v3, p0, Lcom/hunantv/media/player/d/a$a;->b:I

    if-ne v9, v3, :cond_0

    iget v3, p0, Lcom/hunantv/media/player/d/a$a;->c:I

    if-ne v10, v3, :cond_0

    iget v3, p0, Lcom/hunantv/media/player/d/a$a;->d:I

    if-ne v11, v3, :cond_0

    iget v3, p0, Lcom/hunantv/media/player/d/a$a;->e:I

    if-ne v2, v3, :cond_0

    return-object v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
