module {
    public let network = "local"; // ic, staging, local, beta

    public func getGameCanisterId() : Text {
        if (network == "ic") return "gagfs-yqaaa-aaaao-aaiva-cai";
        if (network == "staging") return "bjwew-5qaaa-aaaan-qc7aa-cai";
        if (network == "beta") return "2tncs-liaaa-aaaan-qdapq-cai";

        // else local
        return "bkyz2-fmaaa-aaaaa-qaaaq-cai";
    };

    public func getCharacterCanisterId() : Text {
        if (network == "ic") return "dhyds-jaaaa-aaaao-aaiia-cai";
        if (network == "staging") return "bhuj6-gaaaa-aaaan-qc7ba-cai";
        if (network == "beta") return "7gvtl-wiaaa-aaaan-qdarq-cai";

        // else "local"
        return "br5f7-7uaaa-aaaaa-qaaca-cai";
    };

    public func getAdminPrincipal() : Text {
        if (network == "ic") return "6ulqo-ikasf-xzltp-ylrhu-qt4gt-nv4rz-gd46e-nagoe-3bo7b-kbm3h-bqe";
        if (network == "staging") return "4e6g2-eoooo-h2lec-3h725-hvmmc-fvgsd-qakd3-qsj44-6dlaw-p5ngz-mae";
        if (network == "beta") return "4e6g2-eoooo-h2lec-3h725-hvmmc-fvgsd-qakd3-qsj44-6dlaw-p5ngz-mae";

        // else "local"
        return "4e6g2-eoooo-h2lec-3h725-hvmmc-fvgsd-qakd3-qsj44-6dlaw-p5ngz-mae";
    };
};
