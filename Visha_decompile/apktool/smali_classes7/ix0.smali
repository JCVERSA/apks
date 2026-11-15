.class public final synthetic Lix0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lix0;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lix0;->b:Ljava/lang/Class;

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->b(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
