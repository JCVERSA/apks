.class public final synthetic Lnha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/apache/commons/text/TextStringBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/text/TextStringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnha;->b:Lorg/apache/commons/text/TextStringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lnha;->b:Lorg/apache/commons/text/TextStringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/text/TextStringBuilder;

    return-void
.end method
