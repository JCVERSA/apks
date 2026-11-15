.class public final synthetic Lzs6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le74;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzs6;->b:Ljava/lang/String;

    iput-object p2, p0, Lzs6;->c:Le74;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lzs6;->b:Ljava/lang/String;

    iget-object p0, p0, Lzs6;->c:Le74;

    invoke-static {v0, p0}, Landroidx/datastore/core/MulticastFileObserver$Companion;->a(Ljava/lang/String;Le74;)V

    return-void
.end method
