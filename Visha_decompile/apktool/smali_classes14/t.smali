.class public final synthetic Lt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/database/PlayListMedia;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/database/PlayListMedia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt;->a:Lcom/transsion/dbdata/database/PlayListMedia;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lt;->a:Lcom/transsion/dbdata/database/PlayListMedia;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lcom/transsion/visha/ai/AIServiceManager;->c(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method
