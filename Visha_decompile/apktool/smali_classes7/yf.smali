.class public final synthetic Lyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/apache/commons/lang3/arch/Processor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/arch/Processor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf;->b:Lorg/apache/commons/lang3/arch/Processor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lyf;->b:Lorg/apache/commons/lang3/arch/Processor;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArchUtils;->a(Lorg/apache/commons/lang3/arch/Processor;Ljava/lang/String;)V

    return-void
.end method
