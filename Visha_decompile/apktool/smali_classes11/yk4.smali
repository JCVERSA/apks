.class public final synthetic Lyk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lal4;

.field public final synthetic c:[F

.field public final synthetic d:[F

.field public final synthetic e:[Z

.field public final synthetic f:[I

.field public final synthetic g:I

.field public final synthetic h:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lal4;[F[F[Z[IILandroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk4;->b:Lal4;

    iput-object p2, p0, Lyk4;->c:[F

    iput-object p3, p0, Lyk4;->d:[F

    iput-object p4, p0, Lyk4;->e:[Z

    iput-object p5, p0, Lyk4;->f:[I

    iput p6, p0, Lyk4;->g:I

    iput-object p7, p0, Lyk4;->h:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lyk4;->b:Lal4;

    iget-object v1, p0, Lyk4;->c:[F

    iget-object v2, p0, Lyk4;->d:[F

    iget-object v3, p0, Lyk4;->e:[Z

    iget-object v4, p0, Lyk4;->f:[I

    iget v5, p0, Lyk4;->g:I

    iget-object v6, p0, Lyk4;->h:Landroid/webkit/WebView;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lal4;->c(Lal4;[F[F[Z[IILandroid/webkit/WebView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
