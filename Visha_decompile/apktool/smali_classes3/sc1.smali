.class public interface abstract Lsc1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsc1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrc1;

    invoke-direct {v0}, Lrc1;-><init>()V

    sput-object v0, Lsc1;->a:Lsc1;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
.end method
