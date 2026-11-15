.class final Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodAndStaticVar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodAndStaticVar"
.end annotation


# instance fields
.field final method:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;

.field final staticField:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/FieldSpec;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodAndStaticVar;-><init>(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/FieldSpec;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;Lcom/bumptech/glide/repackaged/com/squareup/javapoet/FieldSpec;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodAndStaticVar;->method:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/MethodSpec;

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/annotation/compiler/RequestOptionsGenerator$MethodAndStaticVar;->staticField:Lcom/bumptech/glide/repackaged/com/squareup/javapoet/FieldSpec;

    return-void
.end method
