.class public interface abstract Lnfa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnfa;

.field public static final b:Lnfa;

.field public static final c:Lnfa;

.field public static final d:Lnfa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljfa;

    invoke-direct {v0}, Ljfa;-><init>()V

    sput-object v0, Lnfa;->a:Lnfa;

    new-instance v0, Lkfa;

    invoke-direct {v0}, Lkfa;-><init>()V

    sput-object v0, Lnfa;->b:Lnfa;

    new-instance v0, Llfa;

    invoke-direct {v0}, Llfa;-><init>()V

    sput-object v0, Lnfa;->c:Lnfa;

    new-instance v0, Lmfa;

    invoke-direct {v0}, Lmfa;-><init>()V

    sput-object v0, Lnfa;->d:Lnfa;

    return-void
.end method


# virtual methods
.method public abstract a(Lfreemarker/template/TemplateException;Lfreemarker/core/Environment;Ljava/io/Writer;)V
.end method
