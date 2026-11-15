.class public final Lzw8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lie8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzw8;->e(Lmc7;Ljava/lang/Object;)Lmc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lzw8$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lzw8$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
