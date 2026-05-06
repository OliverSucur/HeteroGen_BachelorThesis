/*
  Copyright (c) 2021.  Nicolai Oswald
  Copyright (c) 2021.  University of Edinburgh
  All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met: redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer;
  redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution;
  neither the name of the copyright holders nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
--Backend/Murphi/MurphiModular/Constants/GenConst
  ---- System access constants
  const
    ENABLE_QS: false;
    VAL_COUNT: 1;
    ADR_COUNT: 1;
  
  ---- System network constants
    O_NET_MAX: 10;
    U_NET_MAX: 10;
  
  ---- SSP declaration constants
    NrCachesL1_1: 2;
    NrCachesL1_2: 3;
  
---- Backend/Murphi/MurphiModular/Constants/GenLitmusConst
  CPU_COUNT: 2;
  INSTR_COUNT: 1;

--Backend/Murphi/MurphiModular/GenTypes
  type
    ----Backend/Murphi/MurphiModular/Types/GenAdrDef
    Address: 0..ADR_COUNT;
    ClValue: 0..VAL_COUNT;
    
    ----Backend/Murphi/MurphiModular/Types/Enums/GenEnums
      ------Backend/Murphi/MurphiModular/Types/Enums/SubEnums/GenAccess
      PermissionType: enum {
        load, 
        store, 
        evict, 
        none
      };
      
      ------Backend/Murphi/MurphiModular/Types/Enums/SubEnums/GenMessageTypes
      MessageType: enum {
        GetSL1_1, 
        GetML1_1, 
        PutSL1_1, 
        Inv_AckL1_1, 
        GetM_Ack_DL1_1, 
        GetS_AckL1_1, 
        WBL1_1, 
        PutML1_1, 
        GetM_Ack_ADL1_1, 
        InvL1_1, 
        Put_AckL1_1, 
        Fwd_GetSL1_1, 
        Fwd_GetML1_1, 
        GetSL1_2, 
        GetML1_2, 
        PutSL1_2, 
        Inv_AckL1_2, 
        GetM_Ack_DL1_2, 
        GetS_AckL1_2, 
        WBL1_2, 
        PutML1_2, 
        PutEL1_2, 
        GetM_Ack_ADL1_2, 
        InvL1_2, 
        Put_AckL1_2, 
        Fwd_GetSL1_2, 
        Fwd_GetML1_2
      };
      
      ------Backend/Murphi/MurphiModular/Types/Enums/SubEnums/GenArchEnums
      s_cacheL1_2: enum {
        cacheL1_2_S_store_GetM_Ack_AD,
        cacheL1_2_S_store,
        cacheL1_2_S_evict_x_I,
        cacheL1_2_S_evict,
        cacheL1_2_S,
        cacheL1_2_M_evict_x_I,
        cacheL1_2_M_evict,
        cacheL1_2_M,
        cacheL1_2_I_store_GetM_Ack_AD,
        cacheL1_2_I_store,
        cacheL1_2_I_load,
        cacheL1_2_I,
        cacheL1_2_E_evict_x_I,
        cacheL1_2_E_evict,
        cacheL1_2_E
      };
      
      s_directoryL1_1: enum {
        directoryL1_1_S__C__S,
        directoryL1_1_S__C__I,
        directoryL1_1_M__C__I,
        directoryL1_1_I__C__S,
        directoryL1_1_I__C__M,
        directoryL1_1_I__C__I,
        directoryL1_1_I__C__E,
        directoryL1_1_GetSL1_2dM_x_pI_store__C__I,
        directoryL1_1_GetSL1_2dM_x_pI_store_GetM_Ack_AD__C__I,
        directoryL1_1_GetSL1_2S__C__M_GetS,
        directoryL1_1_GetSL1_2S__C__E_GetS,
        directoryL1_1_GetSL1_2I__C__M_GetS,
        directoryL1_1_GetSL1_2I__C__E_GetS,
        directoryL1_1_GetSL1_1M_GetS__C__I,
        directoryL1_1_GetSL1_1I__C__dS_x_pI_load,
        directoryL1_1_GetSL1_1I__C__dM_GetS_x_pS,
        directoryL1_1_GetSL1_1I__C__dM_GetS_x_pI_load,
        directoryL1_1_GetSL1_1I__C__dE_GetS_x_pS,
        directoryL1_1_GetSL1_1I__C__dE_GetS_x_pI_load,
        directoryL1_1_GetML1_2dM_x_pI_store__C__I,
        directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__S,
        directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__I,
        directoryL1_1_GetML1_1S__C__dM_x_pI_store_GetM_Ack_AD,
        directoryL1_1_GetML1_1I__C__dM_x_pI_store_GetM_Ack_AD,
        directoryL1_1_GetML1_1I__C__dM_x_pI_store
      };
      
    ----Backend/Murphi/MurphiModular/Types/GenMachineSets
      -- Cluster: C1
      OBJSET_cacheL1_2: scalarset(2);
      OBJSET_directoryL1_1: enum{directoryL1_1};
      C1Machines: union{OBJSET_cacheL1_2, OBJSET_directoryL1_1};
      
      Machines: union{OBJSET_cacheL1_2, OBJSET_directoryL1_1};
    
    ----Backend/Murphi/MurphiModular/Types/GenCheckTypes
      ------Backend/Murphi/MurphiModular/Types/CheckTypes/GenPermType
        acc_type_obj: multiset[3] of PermissionType;
        PermMonitor: array[Machines] of array[Address] of acc_type_obj;
      
    
    ----Backend/Murphi/MurphiModular/Types/GenMessage
      Message: record
        adr: Address;
        mtype: MessageType;
        src: Machines;
        dst: Machines;
        cl: ClValue;
        acksExpectedL1_1: 0..NrCachesL1_1;
        acksExpectedL1_2: 0..NrCachesL1_2;
      end;
      
    ----Backend/Murphi/MurphiModular/Types/GenNetwork
      NET_Ordered: array[Machines] of array[0..O_NET_MAX-1] of Message;
      NET_Ordered_cnt: array[Machines] of 0..O_NET_MAX;
      NET_Unordered: array[Machines] of multiset[U_NET_MAX] of Message;
    
    ----Backend/Murphi/MurphiModular/Types/GenMachines
      
      ENTRY_cacheL1_2: record
        State: s_cacheL1_2;
        cl: ClValue;
        acksReceivedL1_2: 0..NrCachesL1_2;
        acksExpectedL1_2: 0..NrCachesL1_2;
      end;
      
      MACH_cacheL1_2: record
        cb: array[Address] of ENTRY_cacheL1_2;
      end;
      
      OBJ_cacheL1_2: array[OBJSET_cacheL1_2] of MACH_cacheL1_2;
      v_cacheL1_1: multiset[NrCachesL1_1] of Machines;
      cnt_v_cacheL1_1: 0..NrCachesL1_1;
      v_cacheL1_2: multiset[NrCachesL1_2] of Machines;
      cnt_v_cacheL1_2: 0..NrCachesL1_2;
      
      ENTRY_directoryL1_1: record
        State: s_directoryL1_1;
        cl: ClValue;
        cacheL1_1: v_cacheL1_1;
        ownerL1_1: Machines;
        acksReceivedL1_1: 0..NrCachesL1_1;
        acksExpectedL1_1: 0..NrCachesL1_1;
        proxy_msg: Message;
        cacheL1_2: v_cacheL1_2;
        ownerL1_2: Machines;
        acksReceivedL1_2: 0..NrCachesL1_2;
        acksExpectedL1_2: 0..NrCachesL1_2;
      end;
      
      MACH_directoryL1_1: record
        cb: array[Address] of ENTRY_directoryL1_1;
      end;
      
      OBJ_directoryL1_1: array[OBJSET_directoryL1_1] of MACH_directoryL1_1;
    
    --Backend/Murphi/MurphiModular/Types/GenLitmusCPUSet
    /* The number of CPUS in the OBJSET must be equal to the number of L1 caches */
    OBJSET_CPU: 0..2-1;
    
    /* Instruction */
    INSTR: record
      access: PermissionType;
      adr: Address;
      cl: ClValue;      /* Value store for read operation performed */
      pend: boolean;
    end;
    
    /* Instruction Queue */
    FIFO_CPU: record
      Queue: array[0..1] of INSTR;
      QueueInd: 0..1+1;
      QueueCnt: 0..1+1;
    end;
    
    MACH_CPU: record
      cache: Machines;  /* Store associated cache ID*/
      active: boolean;
      pending: boolean;
      instrstr: FIFO_CPU;
    end;
    
    /* CPUs */
    OBJ_CPU: array[OBJSET_CPU] of MACH_CPU;

  var
    --Backend/Murphi/MurphiModular/GenVars
      fwd: NET_Ordered;
      cnt_fwd: NET_Ordered_cnt;
      resp: NET_Ordered;
      cnt_resp: NET_Ordered_cnt;
      req: NET_Ordered;
      cnt_req: NET_Ordered_cnt;
    
    
      g_perm: PermMonitor;
      i_cacheL1_2: OBJ_cacheL1_2;
      i_directoryL1_1: OBJ_directoryL1_1;
    
      i_cpu: OBJ_CPU;
    
  
--Backend/Murphi/MurphiModular/GenFunctions

  ----Backend/Murphi/MurphiModular/Functions/GenResetFunc
    procedure ResetMachine_cacheL1_2();
    begin
      for i:OBJSET_cacheL1_2 do
        for a:Address do
          i_cacheL1_2[i].cb[a].State := cacheL1_2_I;
          i_cacheL1_2[i].cb[a].cl := 0;
          i_cacheL1_2[i].cb[a].acksReceivedL1_2 := 0;
          i_cacheL1_2[i].cb[a].acksExpectedL1_2 := 0;
    
        endfor;
      endfor;
    end;
    
    procedure ResetMachine_directoryL1_1();
    begin
      for i:OBJSET_directoryL1_1 do
        for a:Address do
          i_directoryL1_1[i].cb[a].State := directoryL1_1_I__C__I;
          i_directoryL1_1[i].cb[a].cl := 0;
          undefine i_directoryL1_1[i].cb[a].cacheL1_1;
          undefine i_directoryL1_1[i].cb[a].ownerL1_1;
          undefine i_directoryL1_1[i].cb[a].proxy_msg;
          undefine i_directoryL1_1[i].cb[a].cacheL1_2;
          undefine i_directoryL1_1[i].cb[a].ownerL1_2;
          i_directoryL1_1[i].cb[a].acksReceivedL1_1 := 0;
          i_directoryL1_1[i].cb[a].acksExpectedL1_1 := 0;
          i_directoryL1_1[i].cb[a].acksReceivedL1_2 := 0;
          i_directoryL1_1[i].cb[a].acksExpectedL1_2 := 0;
    
        endfor;
      endfor;
    end;
    
      procedure ResetMachine_();
      begin
      ResetMachine_cacheL1_2();
      ResetMachine_directoryL1_1();
      
      end;
  ----Backend/Murphi/MurphiModular/Functions/GenEventFunc
  ----Backend/Murphi/MurphiModular/Functions/GenPermFunc
    procedure Clear_perm(adr: Address; m: Machines);
    begin
      alias l_perm_set:g_perm[m][adr] do
          undefine l_perm_set;
      endalias;
    end;
    
    procedure Set_perm(acc_type: PermissionType; adr: Address; m: Machines);
    begin
      alias l_perm_set:g_perm[m][adr] do
      if MultiSetCount(i:l_perm_set, l_perm_set[i] = acc_type) = 0 then
          MultisetAdd(acc_type, l_perm_set);
      endif;
      endalias;
    end;
    
    procedure Reset_perm();
    begin
      for m:Machines do
        for adr:Address do
          Clear_perm(adr, m);
        endfor;
      endfor;
    end;
    
  
  ----Backend/Murphi/MurphiModular/Functions/GenVectorFunc
    -- .add()
    procedure AddElement_cacheL1_1(var sv:v_cacheL1_1; n:Machines);
    begin
        if MultiSetCount(i:sv, sv[i] = n) = 0 then
          MultiSetAdd(n, sv);
        endif;
    end;
    
    -- .del()
    procedure RemoveElement_cacheL1_1(var sv:v_cacheL1_1; n:Machines);
    begin
        if MultiSetCount(i:sv, sv[i] = n) = 1 then
          MultiSetRemovePred(i:sv, sv[i] = n);
        endif;
    end;
    
    -- .clear()
    procedure ClearVector_cacheL1_1(var sv:v_cacheL1_1;);
    begin
        MultiSetRemovePred(i:sv, true);
    end;
    
    -- .contains()
    function IsElement_cacheL1_1(var sv:v_cacheL1_1; n:Machines) : boolean;
    begin
        if MultiSetCount(i:sv, sv[i] = n) = 1 then
          return true;
        elsif MultiSetCount(i:sv, sv[i] = n) = 0 then
          return false;
        else
          Error "Multiple Entries of Sharer in SV multiset";
        endif;
      return false;
    end;
    
    -- .empty()
    function HasElement_cacheL1_1(var sv:v_cacheL1_1; n:Machines) : boolean;
    begin
        if MultiSetCount(i:sv, true) = 0 then
          return false;
        endif;
    
        return true;
    end;
    
    -- .count()
    function VectorCount_cacheL1_1(var sv:v_cacheL1_1) : cnt_v_cacheL1_1;
    begin
        return MultiSetCount(i:sv, true);
    end;
    
    -- .add()
    procedure AddElement_cacheL1_2(var sv:v_cacheL1_2; n:Machines);
    begin
        if MultiSetCount(i:sv, sv[i] = n) = 0 then
          MultiSetAdd(n, sv);
        endif;
    end;
    
    -- .del()
    procedure RemoveElement_cacheL1_2(var sv:v_cacheL1_2; n:Machines);
    begin
        if MultiSetCount(i:sv, sv[i] = n) = 1 then
          MultiSetRemovePred(i:sv, sv[i] = n);
        endif;
    end;
    
    -- .clear()
    procedure ClearVector_cacheL1_2(var sv:v_cacheL1_2;);
    begin
        MultiSetRemovePred(i:sv, true);
    end;
    
    -- .contains()
    function IsElement_cacheL1_2(var sv:v_cacheL1_2; n:Machines) : boolean;
    begin
        if MultiSetCount(i:sv, sv[i] = n) = 1 then
          return true;
        elsif MultiSetCount(i:sv, sv[i] = n) = 0 then
          return false;
        else
          Error "Multiple Entries of Sharer in SV multiset";
        endif;
      return false;
    end;
    
    -- .empty()
    function HasElement_cacheL1_2(var sv:v_cacheL1_2; n:Machines) : boolean;
    begin
        if MultiSetCount(i:sv, true) = 0 then
          return false;
        endif;
    
        return true;
    end;
    
    -- .count()
    function VectorCount_cacheL1_2(var sv:v_cacheL1_2) : cnt_v_cacheL1_2;
    begin
        return MultiSetCount(i:sv, true);
    end;
    
  ----Backend/Murphi/MurphiModular/Functions/GenFIFOFunc
  ----Backend/Murphi/MurphiModular/Functions/GenNetworkFunc
    procedure Send_fwd(msg:Message; src: Machines;);
      Assert(cnt_fwd[msg.dst] < O_NET_MAX) "Too many messages";
      fwd[msg.dst][cnt_fwd[msg.dst]] := msg;
      cnt_fwd[msg.dst] := cnt_fwd[msg.dst] + 1;
    end;
    
    procedure Pop_fwd(dst:Machines; src: Machines;);
    begin
      Assert (cnt_fwd[dst] > 0) "Trying to advance empty Q";
      for i := 0 to cnt_fwd[dst]-1 do
        if i < cnt_fwd[dst]-1 then
          fwd[dst][i] := fwd[dst][i+1];
        else
          undefine fwd[dst][i];
        endif;
      endfor;
      cnt_fwd[dst] := cnt_fwd[dst] - 1;
    end;
    
    procedure Send_resp(msg:Message; src: Machines;);
      Assert(cnt_resp[msg.dst] < O_NET_MAX) "Too many messages";
      resp[msg.dst][cnt_resp[msg.dst]] := msg;
      cnt_resp[msg.dst] := cnt_resp[msg.dst] + 1;
    end;
    
    procedure Pop_resp(dst:Machines; src: Machines;);
    begin
      Assert (cnt_resp[dst] > 0) "Trying to advance empty Q";
      for i := 0 to cnt_resp[dst]-1 do
        if i < cnt_resp[dst]-1 then
          resp[dst][i] := resp[dst][i+1];
        else
          undefine resp[dst][i];
        endif;
      endfor;
      cnt_resp[dst] := cnt_resp[dst] - 1;
    end;
    
    procedure Send_req(msg:Message; src: Machines;);
      Assert(cnt_req[msg.dst] < O_NET_MAX) "Too many messages";
      req[msg.dst][cnt_req[msg.dst]] := msg;
      cnt_req[msg.dst] := cnt_req[msg.dst] + 1;
    end;
    
    procedure Pop_req(dst:Machines; src: Machines;);
    begin
      Assert (cnt_req[dst] > 0) "Trying to advance empty Q";
      for i := 0 to cnt_req[dst]-1 do
        if i < cnt_req[dst]-1 then
          req[dst][i] := req[dst][i+1];
        else
          undefine req[dst][i];
        endif;
      endfor;
      cnt_req[dst] := cnt_req[dst] - 1;
    end;
    
    procedure Multicast_fwd_v_cacheL1_1(var msg: Message; dst_vect: v_cacheL1_1; src: Machines;);
    begin
          for n:Machines do
              if n!=msg.src then
                if MultiSetCount(i:dst_vect, dst_vect[i] = n) = 1 then
                  msg.dst := n;
                  Send_fwd(msg, src);
                endif;
              endif;
          endfor;
    end;
    
    procedure Multicast_fwd_v_cacheL1_2(var msg: Message; dst_vect: v_cacheL1_2; src: Machines;);
    begin
          for n:Machines do
              if n!=msg.src then
                if MultiSetCount(i:dst_vect, dst_vect[i] = n) = 1 then
                  msg.dst := n;
                  Send_fwd(msg, src);
                endif;
              endif;
          endfor;
    end;
    
    function resp_network_ready(): boolean;
    begin
          for dst:Machines do
            for src: Machines do
              if cnt_resp[dst] >= (O_NET_MAX-4) then
                return false;
              endif;
            endfor;
          endfor;
    
          return true;
    end;
    function fwd_network_ready(): boolean;
    begin
          for dst:Machines do
            for src: Machines do
              if cnt_fwd[dst] >= (O_NET_MAX-4) then
                return false;
              endif;
            endfor;
          endfor;
    
          return true;
    end;
    function req_network_ready(): boolean;
    begin
          for dst:Machines do
            for src: Machines do
              if cnt_req[dst] >= (O_NET_MAX-4) then
                return false;
              endif;
            endfor;
          endfor;
    
          return true;
    end;
    function network_ready(): boolean;
    begin
            if !resp_network_ready() then
            return false;
          endif;
    
    
          if !fwd_network_ready() then
            return false;
          endif;
    
    
          if !fwd_network_ready() then
            return false;
          endif;
    
    
          if !resp_network_ready() then
            return false;
          endif;
    
    
          if !req_network_ready() then
            return false;
          endif;
    
    
    
      return true;
    end;
    
    procedure Reset_NET_();
    begin
      
      undefine fwd;
      for dst:Machines do
          cnt_fwd[dst] := 0;
      endfor;
      
      undefine req;
      for dst:Machines do
          cnt_req[dst] := 0;
      endfor;
      
      undefine resp;
      for dst:Machines do
          cnt_resp[dst] := 0;
      endfor;
    
    end;
    
  
  ----Backend/Murphi/MurphiModular/Functions/GenMessageConstrFunc
    function RequestL1_1(adr: Address; mtype: MessageType; src: Machines; dst: Machines) : Message;
    var Message: Message;
    begin
      Message.adr := adr;
      Message.mtype := mtype;
      Message.src := src;
      Message.dst := dst;
    return Message;
    end;
    
    function AckL1_1(adr: Address; mtype: MessageType; src: Machines; dst: Machines) : Message;
    var Message: Message;
    begin
      Message.adr := adr;
      Message.mtype := mtype;
      Message.src := src;
      Message.dst := dst;
    return Message;
    end;
    
    function RespL1_1(adr: Address; mtype: MessageType; src: Machines; dst: Machines; cl: ClValue) : Message;
    var Message: Message;
    begin
      Message.adr := adr;
      Message.mtype := mtype;
      Message.src := src;
      Message.dst := dst;
      Message.cl := cl;
    return Message;
    end;
    
    function RespAckL1_1(adr: Address; mtype: MessageType; src: Machines; dst: Machines; cl: ClValue; acksExpectedL1_1: 0..NrCachesL1_1) : Message;
    var Message: Message;
    begin
      Message.adr := adr;
      Message.mtype := mtype;
      Message.src := src;
      Message.dst := dst;
      Message.cl := cl;
      Message.acksExpectedL1_1 := acksExpectedL1_1;
    return Message;
    end;
    
    function RequestL1_2(adr: Address; mtype: MessageType; src: Machines; dst: Machines) : Message;
    var Message: Message;
    begin
      Message.adr := adr;
      Message.mtype := mtype;
      Message.src := src;
      Message.dst := dst;
    return Message;
    end;
    
    function AckL1_2(adr: Address; mtype: MessageType; src: Machines; dst: Machines) : Message;
    var Message: Message;
    begin
      Message.adr := adr;
      Message.mtype := mtype;
      Message.src := src;
      Message.dst := dst;
    return Message;
    end;
    
    function RespL1_2(adr: Address; mtype: MessageType; src: Machines; dst: Machines; cl: ClValue) : Message;
    var Message: Message;
    begin
      Message.adr := adr;
      Message.mtype := mtype;
      Message.src := src;
      Message.dst := dst;
      Message.cl := cl;
    return Message;
    end;
    
    function RespAckL1_2(adr: Address; mtype: MessageType; src: Machines; dst: Machines; cl: ClValue; acksExpectedL1_2: 0..NrCachesL1_2) : Message;
    var Message: Message;
    begin
      Message.adr := adr;
      Message.mtype := mtype;
      Message.src := src;
      Message.dst := dst;
      Message.cl := cl;
      Message.acksExpectedL1_2 := acksExpectedL1_2;
    return Message;
    end;
    
  
  ----Backend/Murphi/MurphiModular/LitmusTestFunc/GenLitmusFunc
  
    ---- Backend/Murphi/MurphiModular/LitmusTestFunc/GenLitmusCPUBufferFunc
    procedure AddInstr(var f: MACH_CPU; var instr:INSTR);
    begin
      alias p:f.instrstr do
      alias q: p.Queue do
      alias qcnt: p.QueueCnt do
    
      instr.pend := false;
      q[qcnt]:=instr;
      qcnt:=qcnt+1;
    
    
      endalias;
      endalias;
      endalias;
    end;
    
    
    function GetInstr(var f: MACH_CPU): INSTR;
    var
      instr: INSTR;
    begin
      alias p:f.instrstr do
      alias q: p.Queue do
      alias qind: p.QueueInd do
      alias qcnt: p.QueueCnt do
      undefine instr;
    
      if qind = qcnt then
        return instr;
      endif;
    
      if !isundefined(q[qind].access) then
        q[qind].pend := true;   /* Set instruction as active */
        return q[qind];
      endif;
    
      return instr;
    
      endalias;
      endalias;
      endalias;
      endalias;
    end;
    
    procedure PopInstr(var f: MACH_CPU);
    begin
      alias p:f.instrstr do
      alias q: p.Queue do
      alias qind: p.QueueInd do
      alias qcnt: p.QueueCnt do
    
       qind := qind + 1;
    
       if qind = qcnt then
          f.active := false;  /* Set flag CPU done*/
       else
          if isundefined(q[qind].access) then
             f.active := false;
          endif;
       endif;
    
      endalias;
      endalias;
      endalias;
      endalias;
    end;
    
    procedure UpdateVal(var f: MACH_CPU; var val: ClValue);
    begin
      alias p:f.instrstr do
      alias q: p.Queue do
      alias qind: p.QueueInd do
      alias qcnt: p.QueueCnt do
    
      if qind < qcnt & !isundefined(q[qind].access) then
        q[qind].cl := val;
      endif;
    
      endalias;
      endalias;
      endalias;
      endalias;
    end;
    
    function TestPend(var f: MACH_CPU): boolean;
    var
      instr: INSTR;
    begin
      alias p:f.instrstr do
      alias q: p.Queue do
      alias qind: p.QueueInd do
      alias qcnt: p.QueueCnt do
      undefine instr;
    
      if qind = qcnt then
        return false;
      endif;
    
      if !isundefined(q[qind].access) then
        return q[qind].pend;    /* return if instruction is pending */
      endif;
    
      return false;
    
      endalias;
      endalias;
      endalias;
      endalias;
    end;
    
    ------Backend/Murphi/MurphiModular/LitmusTestFunc/GenLitmusTestTrace
      ---- LBSC0__p_SC1__p
      procedure CPU0_Instr(var f: OBJ_CPU);
      /* Instructions */
      var I0: INSTR;var I1: INSTR;
      begin
        alias cpu:f[0] do
          I0.access := load;
          I0.adr := 1;
          I0.cl := undefined;
          AddInstr(cpu, I0);
      
          I1.access := store;
          I1.adr := 0;
          I1.cl := 1;
          AddInstr(cpu, I1);
      
      
        endalias;
      end;
      
      procedure CPU1_Instr(var f: OBJ_CPU);
      /* Instructions */
      var I0: INSTR;var I1: INSTR;
      begin
        alias cpu:f[1] do
          I0.access := load;
          I0.adr := 0;
          I0.cl := undefined;
          AddInstr(cpu, I0);
      
          I1.access := store;
          I1.adr := 1;
          I1.cl := 1;
          AddInstr(cpu, I1);
      
      
        endalias;
      end;
      
      procedure Forbidden();
      
      var match_cnt: 0..2;
      
      begin
        match_cnt := 0;
      
        if i_cpu[0].instrstr.Queue[0].cl = 1 then
          match_cnt := match_cnt + 1;
        endif;
      
        if i_cpu[1].instrstr.Queue[0].cl = 1 then
          match_cnt := match_cnt + 1;
        endif;
      
      
      
        if match_cnt = 2 then
          error "Litmus Test Failed"
        endif;
      
      end;
      procedure CPU_Cache_Map(var f: OBJ_CPU);
      var CPU_ind: 0..CPU_COUNT;
      begin
        CPU_ind := 0;
        for i:OBJSET_cacheL1_2 do
            i_cpu[CPU_ind].cache := i;
            CPU_ind := CPU_ind + 1;
        endfor;
      end;
      
    ------Backend/Murphi/MurphiModular/LitmusTestFunc/GenCPUResetFunc
      /* If at least one instruction stream still exists, then don't do reset */
      function Check_reset(): boolean;
      begin
        for i:OBJSET_CPU do
          if i_cpu[i].active = true | i_cpu[i].pending = true then
            return false;
          endif;
        endfor;
      
        return true;
      end;
      
      procedure Instr(var f: OBJ_CPU);
      begin
        CPU0_Instr(f);
        CPU1_Instr(f);
      end;
      
      procedure Reset_CPU();
      begin
        for i:OBJSET_CPU do
            undefine i_cpu[i].cache;
            i_cpu[i].active := true;
            i_cpu[i].pending := false;
            undefine i_cpu[i].instrstr.Queue;
            i_cpu[i].instrstr.QueueInd:=0;
            i_cpu[i].instrstr.QueueCnt:=0;
        endfor;
      end;
      
      procedure Litmus_CPU_Init();
      begin
        Reset_CPU();
        CPU_Cache_Map(i_cpu);
        Instr(i_cpu);
      end;
  

--Backend/Murphi/MurphiModular/GenStateMachines

  ------Backend/Murphi/MurphiModular/LitmusTestFunc/GenCPULitmusServeCPU
    /* Tries to serve the access */
    function cpu_try_access_cacheL1_2(var cbe: ClValue; adr: Address; var cpu: MACH_CPU): boolean;
    var instr: INSTR;
    begin
      instr := GetInstr(cpu);
    
      alias cpu_adr:instr.adr do
      alias cache: cpu.cache do
    
      if cpu_adr != adr then
        return false;
      endif;
    
      /* Load operation */
      if (instr.access = load|instr.access = load|instr.access = load|instr.access = load|instr.access = load|instr.access = load|instr.access = load|instr.access = load|instr.access = load|instr.access = load) & isundefined(instr.cl) &
            (MultiSetCount(i:g_perm[cache][cpu_adr], g_perm[cache][cpu_adr][i] = load) = 1) then
        UpdateVal(cpu, cbe);
        return true;
      endif;
    
      /* Store operation */
      if (instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store|instr.access = store) & 
            MultiSetCount(i:g_perm[cache][cpu_adr], g_perm[cache][cpu_adr][i] = store) = 1 then
        cbe := instr.cl;
        return true;
      endif;
    
      
    
      return false;
      endalias;
      endalias;
    end;
    
    procedure Serve_CPU(var cbe: ClValue; adr: Address; m: Machines);
    begin
    for i:OBJSET_CPU do
       if i_cpu[i].cache = m then
         alias cpu:i_cpu[i] do
         if TestPend(i_cpu[i]) then
            if ismember(cpu.cache, OBJSET_cacheL1_2) then
              if cpu_try_access_cacheL1_2(cbe, adr, cpu) then
                PopInstr(cpu);
                return;
              endif;
            endif;
    
         endif;
         endalias;
       endif;
    endfor;
    end;
  ----Backend/Murphi/MurphiModular/StateMachines/GenAccessStateMachines
    procedure FSM_Access_cacheL1_2_E_evict(adr:Address; m:OBJSET_cacheL1_2);
    var msg: Message;
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      msg := AckL1_2(adr, PutEL1_2, m, directoryL1_1);
      Send_req(msg, m);
      cbe.State := cacheL1_2_E_evict;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_E_load(adr:Address; m:OBJSET_cacheL1_2);
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      Set_perm(load, adr, m);
      Serve_CPU(cbe.cl, adr, m);cbe.State := cacheL1_2_E;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_E_store(adr:Address; m:OBJSET_cacheL1_2);
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      Set_perm(store, adr, m);
      Serve_CPU(cbe.cl, adr, m);cbe.State := cacheL1_2_M;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_I_load(adr:Address; m:OBJSET_cacheL1_2);
    var msg: Message;
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      msg := RequestL1_2(adr, GetSL1_2, m, directoryL1_1);
      Send_req(msg, m);
      cbe.State := cacheL1_2_I_load;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_I_store(adr:Address; m:OBJSET_cacheL1_2);
    var msg: Message;
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      msg := RequestL1_2(adr, GetML1_2, m, directoryL1_1);
      Send_req(msg, m);
      cbe.acksReceivedL1_2 := 0;
      cbe.State := cacheL1_2_I_store;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_M_evict(adr:Address; m:OBJSET_cacheL1_2);
    var msg: Message;
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      msg := RespL1_2(adr, PutML1_2, m, directoryL1_1, cbe.cl);
      Send_req(msg, m);
      cbe.State := cacheL1_2_M_evict;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_M_load(adr:Address; m:OBJSET_cacheL1_2);
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      Set_perm(load, adr, m);
      Serve_CPU(cbe.cl, adr, m);cbe.State := cacheL1_2_M;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_M_store(adr:Address; m:OBJSET_cacheL1_2);
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      Set_perm(store, adr, m);
      Serve_CPU(cbe.cl, adr, m);cbe.State := cacheL1_2_M;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_S_evict(adr:Address; m:OBJSET_cacheL1_2);
    var msg: Message;
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      msg := RequestL1_2(adr, PutSL1_2, m, directoryL1_1);
      Send_req(msg, m);
      cbe.State := cacheL1_2_S_evict;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_S_load(adr:Address; m:OBJSET_cacheL1_2);
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      Set_perm(load, adr, m);
      Serve_CPU(cbe.cl, adr, m);cbe.State := cacheL1_2_S;
    endalias;
    end;
    
    procedure FSM_Access_cacheL1_2_S_store(adr:Address; m:OBJSET_cacheL1_2);
    var msg: Message;
    begin
    alias cbe: i_cacheL1_2[m].cb[adr] do
      msg := RequestL1_2(adr, GetML1_2, m, directoryL1_1);
      Send_req(msg, m);
      cbe.acksReceivedL1_2 := 0;
      cbe.State := cacheL1_2_S_store;
    endalias;
    end;
    
  ------Backend/Murphi/MurphiModular/LitmusTestFunc/GenCPULitmusAccessCache
    /* Issue Cache request to update */
    procedure access_cacheL1_2(var cpu: MACH_CPU);
    var instr: INSTR;
    begin
      instr := GetInstr(cpu);
      alias adr: instr.adr do
      alias m: cpu.cache do
      alias cbe: i_cacheL1_2[m].cb[adr] do
      alias access: instr.access do
    
      if cpu.pending = false & cbe.State = cacheL1_2_S & access = load  then
        FSM_Access_cacheL1_2_S_load(adr, m);
      endif;
    
      if cpu.pending = false & cbe.State = cacheL1_2_S & access = store & network_ready()  then
        FSM_Access_cacheL1_2_S_store(adr, m);
      endif;
    
      if cpu.pending = false & cbe.State = cacheL1_2_E & access = load  then
        FSM_Access_cacheL1_2_E_load(adr, m);
      endif;
    
      if cpu.pending = false & cbe.State = cacheL1_2_E & access = store  then
        FSM_Access_cacheL1_2_E_store(adr, m);
      endif;
    
      if cpu.pending = false & cbe.State = cacheL1_2_M & access = load  then
        FSM_Access_cacheL1_2_M_load(adr, m);
      endif;
    
      if cpu.pending = false & cbe.State = cacheL1_2_M & access = store  then
        FSM_Access_cacheL1_2_M_store(adr, m);
      endif;
    
      if cpu.pending = false & cbe.State = cacheL1_2_I & access = load & network_ready()  then
        FSM_Access_cacheL1_2_I_load(adr, m);
      endif;
    
      if cpu.pending = false & cbe.State = cacheL1_2_I & access = store & network_ready()  then
        FSM_Access_cacheL1_2_I_store(adr, m);
      endif;
    
      endalias;
      endalias;
      endalias;
      endalias;
    end;
    
    procedure Issue_CPU(var cpu: MACH_CPU);
    begin
        if ismember(cpu.cache, OBJSET_cacheL1_2) then
          access_cacheL1_2(cpu);
        endif;
    
    end;
  ----Backend/Murphi/MurphiModular/StateMachines/GenMessageStateMachines
    function FSM_MSG_cacheL1_2(inmsg:Message; m:OBJSET_cacheL1_2) : boolean;
    var msg: Message;
    begin
      alias adr: inmsg.adr do
      alias cbe: i_cacheL1_2[m].cb[adr] do
    switch cbe.State
      case cacheL1_2_E:
      switch inmsg.mtype
        case Fwd_GetML1_2:
          msg := RespL1_2(adr,GetM_Ack_DL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I;
          return true;
        
        case Fwd_GetSL1_2:
          msg := RespL1_2(adr,GetS_AckL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          msg := RespL1_2(adr,WBL1_2,m,directoryL1_1,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m); Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          cbe.State := cacheL1_2_S;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_E_evict:
      switch inmsg.mtype
        case Fwd_GetML1_2:
          msg := RespL1_2(adr,GetM_Ack_DL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_E_evict_x_I;
          return true;
        
        case Fwd_GetSL1_2:
          msg := RespL1_2(adr,GetS_AckL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          msg := RespL1_2(adr,WBL1_2,m,directoryL1_1,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_S_evict;
          return true;
        
        case Put_AckL1_2:
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_E_evict_x_I:
      switch inmsg.mtype
        case Put_AckL1_2:
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_I:
      switch inmsg.mtype
        else return false;
      endswitch;
      
      case cacheL1_2_I_load:
      switch inmsg.mtype
        case GetM_Ack_DL1_2:
          cbe.cl := inmsg.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          Clear_perm(adr, m); Set_perm(store, adr, m); Set_perm(load, adr, m);
          cbe.State := cacheL1_2_E;
          return true;
        
        case GetS_AckL1_2:
          cbe.cl := inmsg.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          Clear_perm(adr, m); Set_perm(load, adr, m);
          cbe.State := cacheL1_2_S;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_I_store:
      switch inmsg.mtype
        case GetM_Ack_ADL1_2:
          cbe.cl := inmsg.cl;
          cbe.acksExpectedL1_2 := inmsg.acksExpectedL1_2;
          if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Set_perm(store, adr, m);
            Serve_CPU(cbe.cl, adr, m);
            Clear_perm(adr, m); Set_perm(store, adr, m); Set_perm(load, adr, m);
            cbe.State := cacheL1_2_M;
            return true;
          endif;
          if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Clear_perm(adr, m);
            cbe.State := cacheL1_2_I_store_GetM_Ack_AD;
            return true;
          endif;
        
        case GetM_Ack_DL1_2:
          cbe.cl := inmsg.cl;
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          Clear_perm(adr, m); Set_perm(store, adr, m); Set_perm(load, adr, m);
          cbe.State := cacheL1_2_M;
          return true;
        
        case Inv_AckL1_2:
          cbe.acksReceivedL1_2 := cbe.acksReceivedL1_2+1;
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I_store;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_I_store_GetM_Ack_AD:
      switch inmsg.mtype
        case Inv_AckL1_2:
          cbe.acksReceivedL1_2 := cbe.acksReceivedL1_2+1;
          if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Set_perm(store, adr, m);
            Serve_CPU(cbe.cl, adr, m);
            Clear_perm(adr, m); Set_perm(store, adr, m); Set_perm(load, adr, m);
            cbe.State := cacheL1_2_M;
            return true;
          endif;
          if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Clear_perm(adr, m);
            cbe.State := cacheL1_2_I_store_GetM_Ack_AD;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case cacheL1_2_M:
      switch inmsg.mtype
        case Fwd_GetML1_2:
          msg := RespL1_2(adr,GetM_Ack_DL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I;
          return true;
        
        case Fwd_GetSL1_2:
          msg := RespL1_2(adr,GetS_AckL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          msg := RespL1_2(adr,WBL1_2,m,directoryL1_1,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m); Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          cbe.State := cacheL1_2_S;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_M_evict:
      switch inmsg.mtype
        case Fwd_GetML1_2:
          msg := RespL1_2(adr,GetM_Ack_DL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_M_evict_x_I;
          return true;
        
        case Fwd_GetSL1_2:
          msg := RespL1_2(adr,GetS_AckL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          msg := RespL1_2(adr,WBL1_2,m,directoryL1_1,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_S_evict;
          return true;
        
        case Put_AckL1_2:
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_M_evict_x_I:
      switch inmsg.mtype
        case Put_AckL1_2:
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_S:
      switch inmsg.mtype
        case InvL1_2:
          msg := RespL1_2(adr,Inv_AckL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_S_evict:
      switch inmsg.mtype
        case InvL1_2:
          msg := RespL1_2(adr,Inv_AckL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_S_evict_x_I;
          return true;
        
        case Put_AckL1_2:
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_S_evict_x_I:
      switch inmsg.mtype
        case Put_AckL1_2:
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_S_store:
      switch inmsg.mtype
        case GetM_Ack_ADL1_2:
          cbe.acksExpectedL1_2 := inmsg.acksExpectedL1_2;
          if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Set_perm(store, adr, m);
            Serve_CPU(cbe.cl, adr, m);
            Clear_perm(adr, m); Set_perm(store, adr, m); Set_perm(load, adr, m);
            cbe.State := cacheL1_2_M;
            return true;
          endif;
          if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Clear_perm(adr, m);
            cbe.State := cacheL1_2_S_store_GetM_Ack_AD;
            return true;
          endif;
        
        case GetM_Ack_DL1_2:
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          Clear_perm(adr, m); Set_perm(store, adr, m); Set_perm(load, adr, m);
          cbe.State := cacheL1_2_M;
          return true;
        
        case InvL1_2:
          msg := RespL1_2(adr,Inv_AckL1_2,m,inmsg.src,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_I_store;
          return true;
        
        case Inv_AckL1_2:
          cbe.acksReceivedL1_2 := cbe.acksReceivedL1_2+1;
          Clear_perm(adr, m);
          cbe.State := cacheL1_2_S_store;
          return true;
        
        else return false;
      endswitch;
      
      case cacheL1_2_S_store_GetM_Ack_AD:
      switch inmsg.mtype
        case Inv_AckL1_2:
          cbe.acksReceivedL1_2 := cbe.acksReceivedL1_2+1;
          if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Clear_perm(adr, m);
            cbe.State := cacheL1_2_S_store_GetM_Ack_AD;
            return true;
          endif;
          if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Set_perm(store, adr, m);
            Serve_CPU(cbe.cl, adr, m);
            Clear_perm(adr, m); Set_perm(store, adr, m); Set_perm(load, adr, m);
            cbe.State := cacheL1_2_M;
            return true;
          endif;
        
        else return false;
      endswitch;
      
    endswitch;
    endalias;
    endalias;
    return false;
    end;
    
    function FSM_MSG_directoryL1_1(inmsg:Message; m:OBJSET_directoryL1_1) : boolean;
    var msg_PutML1_2: Message;
    var msg_Put_AckL1_2: Message;
    var msg: Message;
    var msg_PutML1_1: Message;
    var msg_Put_AckL1_1: Message;
    var msg_PutSL1_2: Message;
    var msg_GetML1_2: Message;
    var msg_GetML1_1: Message;
    var msg_GetM_Ack_DL1_1: Message;
    var msg_GetSL1_2: Message;
    var msg_GetSL1_1: Message;
    var msg_GetS_AckL1_1: Message;
    var msg_PutSL1_1: Message;
    var msg_GetM_Ack_ADL1_2: Message;
    var msg_GetM_Ack_DL1_2: Message;
    var msg_PutEL1_2: Message;
    var msg_GetS_AckL1_2: Message;
    var msg_GetM_Ack_ADL1_1: Message;
    begin
      alias adr: inmsg.adr do
      alias cbe: i_directoryL1_1[m].cb[adr] do
    switch cbe.State
      case directoryL1_1_GetML1_1I__C__dM_x_pI_store:
      switch inmsg.mtype
        case GetM_Ack_DL1_2:
          cbe.cl := inmsg.cl;
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
          if (cbe.ownerL1_2 = msg_PutML1_2.src) then
          cbe.cl := msg_PutML1_2.cl;
          msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
          Send_resp(msg, m);
          cbe.ownerL1_1 := cbe.proxy_msg.src;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_M__C__I;
          return true;
          endif;
        
        case Inv_AckL1_2:
          cbe.acksReceivedL1_2 := cbe.acksReceivedL1_2+1;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetML1_1I__C__dM_x_pI_store;
          return true;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetML1_1I__C__dM_x_pI_store_GetM_Ack_AD:
      switch inmsg.mtype
        case Inv_AckL1_2:
          cbe.acksReceivedL1_2 := cbe.acksReceivedL1_2+1;
          if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetML1_1I__C__dM_x_pI_store_GetM_Ack_AD;
            return true;
          endif;
          if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Set_perm(store, adr, m);
            Serve_CPU(cbe.cl, adr, m);
            msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
            msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
            RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
            if (cbe.ownerL1_2 = msg_PutML1_2.src) then
            cbe.cl := msg_PutML1_2.cl;
            msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            cbe.ownerL1_1 := cbe.proxy_msg.src;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_M__C__I;
            return true;
            endif;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetML1_1S__C__dM_x_pI_store_GetM_Ack_AD:
      switch inmsg.mtype
        case Inv_AckL1_2:
          cbe.acksReceivedL1_2 := cbe.acksReceivedL1_2+1;
          if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Set_perm(store, adr, m);
            Serve_CPU(cbe.cl, adr, m);
            msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
            msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
            RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
            if (cbe.ownerL1_2 = msg_PutML1_2.src) then
            cbe.cl := msg_PutML1_2.cl;
            if !(IsElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src)) then
              if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
                Send_resp(msg, m);
                cbe.ownerL1_1 := cbe.proxy_msg.src;
                ClearVector_cacheL1_1(cbe.cacheL1_1);
                Clear_perm(adr, m);
                cbe.State := directoryL1_1_M__C__I;
                return true;
              endif;
              if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                msg := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
                Send_resp(msg, m);
                msg := AckL1_1(adr,InvL1_1,cbe.proxy_msg.src,cbe.proxy_msg.src);
                Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
                cbe.ownerL1_1 := cbe.proxy_msg.src;
                ClearVector_cacheL1_1(cbe.cacheL1_1);
                Clear_perm(adr, m);
                cbe.State := directoryL1_1_M__C__I;
                return true;
              endif;
            endif;
            if (IsElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src)) then
              RemoveElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
              if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                msg := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
                Send_resp(msg, m);
                msg := AckL1_1(adr,InvL1_1,cbe.proxy_msg.src,cbe.proxy_msg.src);
                Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
                cbe.ownerL1_1 := cbe.proxy_msg.src;
                ClearVector_cacheL1_1(cbe.cacheL1_1);
                Clear_perm(adr, m);
                cbe.State := directoryL1_1_M__C__I;
                return true;
              endif;
              if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
                Send_resp(msg, m);
                cbe.ownerL1_1 := cbe.proxy_msg.src;
                ClearVector_cacheL1_1(cbe.cacheL1_1);
                Clear_perm(adr, m);
                cbe.State := directoryL1_1_M__C__I;
                return true;
              endif;
            endif;
            endif;
          endif;
          if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetML1_1S__C__dM_x_pI_store_GetM_Ack_AD;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__I:
      switch inmsg.mtype
        case Inv_AckL1_1:
          cbe.acksReceivedL1_1 := cbe.acksReceivedL1_1+1;
          if !(cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__I;
            return true;
          endif;
          if (cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
            Set_perm(store, adr, m);
            Serve_CPU(cbe.cl, adr, m);
            msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
            msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
            if (cbe.ownerL1_1 = msg_PutML1_1.src) then
            cbe.cl := msg_PutML1_1.cl;
            msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
            Send_resp(msg, m);
            cbe.ownerL1_2 := cbe.proxy_msg.src;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
            endif;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__S:
      switch inmsg.mtype
        case Inv_AckL1_1:
          cbe.acksReceivedL1_1 := cbe.acksReceivedL1_1+1;
          if (cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
            Set_perm(store, adr, m);
            Serve_CPU(cbe.cl, adr, m);
            msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
            msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
            if (cbe.ownerL1_1 = msg_PutML1_1.src) then
            cbe.cl := msg_PutML1_1.cl;
            if !(IsElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src)) then
              msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
              Send_resp(msg, m);
              msg := AckL1_2(adr,InvL1_2,cbe.proxy_msg.src,cbe.proxy_msg.src);
              Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
              cbe.ownerL1_2 := cbe.proxy_msg.src;
              ClearVector_cacheL1_2(cbe.cacheL1_2);
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_I__C__M;
              return true;
            endif;
            if (IsElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src)) then
              RemoveElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
              msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
              Send_resp(msg, m);
              msg := AckL1_2(adr,InvL1_2,cbe.proxy_msg.src,cbe.proxy_msg.src);
              Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
              cbe.ownerL1_2 := cbe.proxy_msg.src;
              ClearVector_cacheL1_2(cbe.cacheL1_2);
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_I__C__M;
              return true;
            endif;
            endif;
          endif;
          if !(cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__S;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetML1_2dM_x_pI_store__C__I:
      switch inmsg.mtype
        case GetM_Ack_DL1_1:
          cbe.cl := inmsg.cl;
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
          if (cbe.ownerL1_1 = msg_PutML1_1.src) then
          cbe.cl := msg_PutML1_1.cl;
          msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
          Send_resp(msg, m);
          cbe.ownerL1_2 := cbe.proxy_msg.src;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_I__C__M;
          return true;
          endif;
        
        case Inv_AckL1_1:
          cbe.acksReceivedL1_1 := cbe.acksReceivedL1_1+1;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetML1_2dM_x_pI_store__C__I;
          return true;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_1I__C__dE_GetS_x_pI_load:
      switch inmsg.mtype
        case GetS_AckL1_2:
          cbe.cl := inmsg.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetSL1_1I__C__dE_GetS_x_pS;
          return true;
        
        case WBL1_2:
          if (inmsg.src = cbe.ownerL1_2) then
          cbe.cl := inmsg.cl;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetSL1_1I__C__dS_x_pI_load;
          return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_1I__C__dE_GetS_x_pS:
      switch inmsg.mtype
        case WBL1_2:
          if (inmsg.src = cbe.ownerL1_2) then
          cbe.cl := inmsg.cl;
          msg_PutSL1_2 := RequestL1_2(adr,PutSL1_2,m,m);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutSL1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutSL1_2.src);
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_1I__C__dM_GetS_x_pI_load:
      switch inmsg.mtype
        case GetS_AckL1_2:
          cbe.cl := inmsg.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetSL1_1I__C__dM_GetS_x_pS;
          return true;
        
        case WBL1_2:
          if (inmsg.src = cbe.ownerL1_2) then
          cbe.cl := inmsg.cl;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetSL1_1I__C__dS_x_pI_load;
          return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_1I__C__dM_GetS_x_pS:
      switch inmsg.mtype
        case WBL1_2:
          if (inmsg.src = cbe.ownerL1_2) then
          cbe.cl := inmsg.cl;
          msg_PutSL1_2 := RequestL1_2(adr,PutSL1_2,m,m);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutSL1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutSL1_2.src);
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_1I__C__dS_x_pI_load:
      switch inmsg.mtype
        case GetS_AckL1_2:
          cbe.cl := inmsg.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutSL1_2 := RequestL1_2(adr,PutSL1_2,m,m);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutSL1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutSL1_2.src);
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_1M_GetS__C__I:
      switch inmsg.mtype
        case WBL1_1:
          if !(inmsg.src = cbe.ownerL1_1) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_1M_GetS__C__I;
            return true;
          endif;
          if (inmsg.src = cbe.ownerL1_1) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_2I__C__E_GetS:
      switch inmsg.mtype
        case WBL1_2:
          if !(inmsg.src = cbe.ownerL1_2) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_2I__C__E_GetS;
            return true;
          endif;
          if (inmsg.src = cbe.ownerL1_2) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_2I__C__M_GetS:
      switch inmsg.mtype
        case WBL1_2:
          if (inmsg.src = cbe.ownerL1_2) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
          if !(inmsg.src = cbe.ownerL1_2) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_2I__C__M_GetS;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_2S__C__E_GetS:
      switch inmsg.mtype
        case WBL1_2:
          if (inmsg.src = cbe.ownerL1_2) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
          if !(inmsg.src = cbe.ownerL1_2) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_2S__C__E_GetS;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_2S__C__M_GetS:
      switch inmsg.mtype
        case WBL1_2:
          if (inmsg.src = cbe.ownerL1_2) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
          if !(inmsg.src = cbe.ownerL1_2) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_2S__C__M_GetS;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_2dM_x_pI_store_GetM_Ack_AD__C__I:
      switch inmsg.mtype
        case Inv_AckL1_1:
          cbe.acksReceivedL1_1 := cbe.acksReceivedL1_1+1;
          if !(cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_2dM_x_pI_store_GetM_Ack_AD__C__I;
            return true;
          endif;
          if (cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
            Set_perm(store, adr, m);
            Serve_CPU(cbe.cl, adr, m);
            msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
            msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
            if (cbe.ownerL1_1 = msg_PutML1_1.src) then
            cbe.cl := msg_PutML1_1.cl;
            msg := RespL1_2(adr,GetM_Ack_DL1_2,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            cbe.ownerL1_2 := cbe.proxy_msg.src;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__E;
            return true;
            endif;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_GetSL1_2dM_x_pI_store__C__I:
      switch inmsg.mtype
        case GetM_Ack_DL1_1:
          cbe.cl := inmsg.cl;
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
          if (cbe.ownerL1_1 = msg_PutML1_1.src) then
          cbe.cl := msg_PutML1_1.cl;
          msg := RespL1_2(adr,GetM_Ack_DL1_2,m,cbe.proxy_msg.src,cbe.cl);
          Send_resp(msg, m);
          cbe.ownerL1_2 := cbe.proxy_msg.src;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_I__C__E;
          return true;
          endif;
        
        case Inv_AckL1_1:
          cbe.acksReceivedL1_1 := cbe.acksReceivedL1_1+1;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetSL1_2dM_x_pI_store__C__I;
          return true;
        
        else return false;
      endswitch;
      
      case directoryL1_1_I__C__E:
      switch inmsg.mtype
        case GetML1_1:
          msg_GetML1_2 := RequestL1_2(adr,GetML1_2,m,m);
          cbe.acksReceivedL1_2 := 0;
          msg := RequestL1_2(adr,Fwd_GetML1_2,msg_GetML1_2.src,cbe.ownerL1_2);
          Send_fwd(msg, m);
          cbe.ownerL1_2 := msg_GetML1_2.src;
          cbe.proxy_msg := inmsg;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetML1_1I__C__dM_x_pI_store;
          return true;
        
        case GetML1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          msg_GetM_Ack_DL1_1 := RespL1_1(adr,GetM_Ack_DL1_1,m,msg_GetML1_1.src,cbe.cl);
          cbe.ownerL1_1 := msg_GetML1_1.src;
          cbe.cl := msg_GetM_Ack_DL1_1.cl;
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
          if (cbe.ownerL1_1 = msg_PutML1_1.src) then
          cbe.cl := msg_PutML1_1.cl;
          cbe.proxy_msg := inmsg;
          msg := RequestL1_2(adr,Fwd_GetML1_2,cbe.proxy_msg.src,cbe.ownerL1_2);
          Send_fwd(msg, m);
          cbe.ownerL1_2 := cbe.proxy_msg.src;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_I__C__M;
          return true;
          endif;
        
        case GetSL1_1:
          msg_GetSL1_2 := RequestL1_2(adr,GetSL1_2,m,m);
          msg := RequestL1_2(adr,Fwd_GetSL1_2,msg_GetSL1_2.src,cbe.ownerL1_2);
          Send_fwd(msg, m);
          AddElement_cacheL1_2(cbe.cacheL1_2, msg_GetSL1_2.src);
          AddElement_cacheL1_2(cbe.cacheL1_2, cbe.ownerL1_2);
          cbe.proxy_msg := inmsg;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetSL1_1I__C__dE_GetS_x_pI_load;
          return true;
        
        case GetSL1_2:
          msg_GetSL1_1 := RequestL1_1(adr,GetSL1_1,m,m);
          AddElement_cacheL1_1(cbe.cacheL1_1, msg_GetSL1_1.src);
          msg_GetS_AckL1_1 := RespL1_1(adr,GetS_AckL1_1,m,msg_GetSL1_1.src,cbe.cl);
          cbe.cl := msg_GetS_AckL1_1.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutSL1_1 := RequestL1_1(adr,PutSL1_1,m,m);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutSL1_1.src);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, msg_PutSL1_1.src);
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            cbe.proxy_msg := inmsg;
            msg := RequestL1_2(adr,Fwd_GetSL1_2,cbe.proxy_msg.src,cbe.ownerL1_2);
            Send_fwd(msg, m);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.ownerL1_2);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_2S__C__E_GetS;
            return true;
          endif;
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            cbe.proxy_msg := inmsg;
            msg := RequestL1_2(adr,Fwd_GetSL1_2,cbe.proxy_msg.src,cbe.ownerL1_2);
            Send_fwd(msg, m);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.ownerL1_2);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_2I__C__E_GetS;
            return true;
          endif;
        
        case PutEL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__E;
            return true;
          endif;
          if (cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutML1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          if (cbe.ownerL1_1 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__E;
            return true;
          endif;
          if !(cbe.ownerL1_1 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__E;
            return true;
          endif;
        
        case PutML1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__E;
            return true;
          endif;
          if (cbe.ownerL1_2 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutSL1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, inmsg.src);
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__E;
            return true;
          endif;
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__E;
            return true;
          endif;
        
        case PutSL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__E;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_I__C__I:
      switch inmsg.mtype
        case GetML1_1:
          msg_GetML1_2 := RequestL1_2(adr,GetML1_2,m,m);
          cbe.acksReceivedL1_2 := 0;
          msg_GetM_Ack_ADL1_2 := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,msg_GetML1_2.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
          cbe.ownerL1_2 := msg_GetML1_2.src;
          cbe.cl := msg_GetM_Ack_ADL1_2.cl;
          cbe.acksExpectedL1_2 := msg_GetM_Ack_ADL1_2.acksExpectedL1_2;
          if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
          if (cbe.ownerL1_2 = msg_PutML1_2.src) then
          cbe.cl := msg_PutML1_2.cl;
          cbe.proxy_msg := inmsg;
          msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
          Send_resp(msg, m);
          cbe.ownerL1_1 := cbe.proxy_msg.src;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_M__C__I;
          return true;
          endif;
          endif;
        
        case GetML1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          msg_GetM_Ack_DL1_1 := RespL1_1(adr,GetM_Ack_DL1_1,m,msg_GetML1_1.src,cbe.cl);
          cbe.ownerL1_1 := msg_GetML1_1.src;
          cbe.cl := msg_GetM_Ack_DL1_1.cl;
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
          if (cbe.ownerL1_1 = msg_PutML1_1.src) then
          cbe.cl := msg_PutML1_1.cl;
          cbe.proxy_msg := inmsg;
          msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
          Send_resp(msg, m);
          cbe.ownerL1_2 := cbe.proxy_msg.src;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_I__C__M;
          return true;
          endif;
        
        case GetSL1_1:
          msg_GetSL1_2 := RequestL1_2(adr,GetSL1_2,m,m);
          msg_GetM_Ack_DL1_2 := RespL1_2(adr,GetM_Ack_DL1_2,m,msg_GetSL1_2.src,cbe.cl);
          cbe.ownerL1_2 := msg_GetSL1_2.src;
          cbe.cl := msg_GetM_Ack_DL1_2.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutEL1_2 := AckL1_2(adr,PutEL1_2,m,m);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutEL1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutEL1_2.src);
          if (cbe.ownerL1_2 = msg_PutEL1_2.src) then
          cbe.proxy_msg := inmsg;
          AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
          msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_S__C__I;
          return true;
          endif;
        
        case GetSL1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          msg_GetM_Ack_DL1_1 := RespL1_1(adr,GetM_Ack_DL1_1,m,msg_GetML1_1.src,cbe.cl);
          cbe.ownerL1_1 := msg_GetML1_1.src;
          cbe.cl := msg_GetM_Ack_DL1_1.cl;
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
          if (cbe.ownerL1_1 = msg_PutML1_1.src) then
          cbe.cl := msg_PutML1_1.cl;
          cbe.proxy_msg := inmsg;
          msg := RespL1_2(adr,GetM_Ack_DL1_2,m,cbe.proxy_msg.src,cbe.cl);
          Send_resp(msg, m);
          cbe.ownerL1_2 := cbe.proxy_msg.src;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_I__C__E;
          return true;
          endif;
        
        case PutEL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if (cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutML1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          if (cbe.ownerL1_1 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if !(cbe.ownerL1_1 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutML1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (cbe.ownerL1_2 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutSL1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, inmsg.src);
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutSL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_I__C__M:
      switch inmsg.mtype
        case GetML1_1:
          msg_GetML1_2 := RequestL1_2(adr,GetML1_2,m,m);
          cbe.acksReceivedL1_2 := 0;
          msg := RequestL1_2(adr,Fwd_GetML1_2,msg_GetML1_2.src,cbe.ownerL1_2);
          Send_fwd(msg, m);
          cbe.ownerL1_2 := msg_GetML1_2.src;
          cbe.proxy_msg := inmsg;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetML1_1I__C__dM_x_pI_store;
          return true;
        
        case GetML1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          msg_GetM_Ack_DL1_1 := RespL1_1(adr,GetM_Ack_DL1_1,m,msg_GetML1_1.src,cbe.cl);
          cbe.ownerL1_1 := msg_GetML1_1.src;
          cbe.cl := msg_GetM_Ack_DL1_1.cl;
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
          if (cbe.ownerL1_1 = msg_PutML1_1.src) then
          cbe.cl := msg_PutML1_1.cl;
          cbe.proxy_msg := inmsg;
          msg := RequestL1_2(adr,Fwd_GetML1_2,cbe.proxy_msg.src,cbe.ownerL1_2);
          Send_fwd(msg, m);
          cbe.ownerL1_2 := cbe.proxy_msg.src;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_I__C__M;
          return true;
          endif;
        
        case GetSL1_1:
          msg_GetSL1_2 := RequestL1_2(adr,GetSL1_2,m,m);
          msg := RequestL1_2(adr,Fwd_GetSL1_2,msg_GetSL1_2.src,cbe.ownerL1_2);
          Send_fwd(msg, m);
          AddElement_cacheL1_2(cbe.cacheL1_2, msg_GetSL1_2.src);
          AddElement_cacheL1_2(cbe.cacheL1_2, cbe.ownerL1_2);
          cbe.proxy_msg := inmsg;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetSL1_1I__C__dM_GetS_x_pI_load;
          return true;
        
        case GetSL1_2:
          msg_GetSL1_1 := RequestL1_1(adr,GetSL1_1,m,m);
          AddElement_cacheL1_1(cbe.cacheL1_1, msg_GetSL1_1.src);
          msg_GetS_AckL1_1 := RespL1_1(adr,GetS_AckL1_1,m,msg_GetSL1_1.src,cbe.cl);
          cbe.cl := msg_GetS_AckL1_1.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutSL1_1 := RequestL1_1(adr,PutSL1_1,m,m);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutSL1_1.src);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, msg_PutSL1_1.src);
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            cbe.proxy_msg := inmsg;
            msg := RequestL1_2(adr,Fwd_GetSL1_2,cbe.proxy_msg.src,cbe.ownerL1_2);
            Send_fwd(msg, m);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.ownerL1_2);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_2I__C__M_GetS;
            return true;
          endif;
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            cbe.proxy_msg := inmsg;
            msg := RequestL1_2(adr,Fwd_GetSL1_2,cbe.proxy_msg.src,cbe.ownerL1_2);
            Send_fwd(msg, m);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.ownerL1_2);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_GetSL1_2S__C__M_GetS;
            return true;
          endif;
        
        case PutEL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (cbe.ownerL1_2 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
          endif;
        
        case PutML1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          if (cbe.ownerL1_1 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
          endif;
          if !(cbe.ownerL1_1 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
          endif;
        
        case PutML1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
          endif;
          if (cbe.ownerL1_2 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutSL1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, inmsg.src);
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
          endif;
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
          endif;
        
        case PutSL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
          endif;
          if (cbe.ownerL1_2 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_I__C__S:
      switch inmsg.mtype
        case GetML1_1:
          msg_GetML1_2 := RequestL1_2(adr,GetML1_2,m,m);
          cbe.acksReceivedL1_2 := 0;
          if (IsElement_cacheL1_2(cbe.cacheL1_2, msg_GetML1_2.src)) then
            RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_GetML1_2.src);
            msg_GetM_Ack_ADL1_2 := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,msg_GetML1_2.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
            msg := AckL1_2(adr,InvL1_2,msg_GetML1_2.src,msg_GetML1_2.src);
            Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
            cbe.ownerL1_2 := msg_GetML1_2.src;
            ClearVector_cacheL1_2(cbe.cacheL1_2);
            cbe.cl := msg_GetM_Ack_ADL1_2.cl;
            cbe.acksExpectedL1_2 := msg_GetM_Ack_ADL1_2.acksExpectedL1_2;
            if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
              msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
              RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
              if (cbe.ownerL1_2 = msg_PutML1_2.src) then
              cbe.cl := msg_PutML1_2.cl;
              cbe.proxy_msg := inmsg;
              msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
              Send_resp(msg, m);
              cbe.ownerL1_1 := cbe.proxy_msg.src;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_M__C__I;
              return true;
              endif;
            endif;
            if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetML1_1I__C__dM_x_pI_store_GetM_Ack_AD;
              return true;
            endif;
          endif;
          if !(IsElement_cacheL1_2(cbe.cacheL1_2, msg_GetML1_2.src)) then
            msg_GetM_Ack_ADL1_2 := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,msg_GetML1_2.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
            msg := AckL1_2(adr,InvL1_2,msg_GetML1_2.src,msg_GetML1_2.src);
            Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
            cbe.ownerL1_2 := msg_GetML1_2.src;
            ClearVector_cacheL1_2(cbe.cacheL1_2);
            cbe.cl := msg_GetM_Ack_ADL1_2.cl;
            cbe.acksExpectedL1_2 := msg_GetM_Ack_ADL1_2.acksExpectedL1_2;
            if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
              msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
              RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
              if (cbe.ownerL1_2 = msg_PutML1_2.src) then
              cbe.cl := msg_PutML1_2.cl;
              cbe.proxy_msg := inmsg;
              msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
              Send_resp(msg, m);
              cbe.ownerL1_1 := cbe.proxy_msg.src;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_M__C__I;
              return true;
              endif;
            endif;
            if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetML1_1I__C__dM_x_pI_store_GetM_Ack_AD;
              return true;
            endif;
          endif;
        
        case GetML1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          msg_GetM_Ack_DL1_1 := RespL1_1(adr,GetM_Ack_DL1_1,m,msg_GetML1_1.src,cbe.cl);
          cbe.ownerL1_1 := msg_GetML1_1.src;
          cbe.cl := msg_GetM_Ack_DL1_1.cl;
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
          if (cbe.ownerL1_1 = msg_PutML1_1.src) then
          cbe.cl := msg_PutML1_1.cl;
          cbe.proxy_msg := inmsg;
          if !(IsElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src)) then
            msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
            Send_resp(msg, m);
            msg := AckL1_2(adr,InvL1_2,cbe.proxy_msg.src,cbe.proxy_msg.src);
            Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
            cbe.ownerL1_2 := cbe.proxy_msg.src;
            ClearVector_cacheL1_2(cbe.cacheL1_2);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
          endif;
          if (IsElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src)) then
            RemoveElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
            msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
            Send_resp(msg, m);
            msg := AckL1_2(adr,InvL1_2,cbe.proxy_msg.src,cbe.proxy_msg.src);
            Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
            cbe.ownerL1_2 := cbe.proxy_msg.src;
            ClearVector_cacheL1_2(cbe.cacheL1_2);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__M;
            return true;
          endif;
          endif;
        
        case GetSL1_1:
          msg_GetSL1_2 := RequestL1_2(adr,GetSL1_2,m,m);
          msg_GetS_AckL1_2 := RespL1_2(adr,GetS_AckL1_2,m,msg_GetSL1_2.src,cbe.cl);
          AddElement_cacheL1_2(cbe.cacheL1_2, msg_GetSL1_2.src);
          cbe.cl := msg_GetS_AckL1_2.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutSL1_2 := RequestL1_2(adr,PutSL1_2,m,m);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutSL1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutSL1_2.src);
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            cbe.proxy_msg := inmsg;
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            cbe.proxy_msg := inmsg;
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
        
        case GetSL1_2:
          msg_GetSL1_1 := RequestL1_1(adr,GetSL1_1,m,m);
          AddElement_cacheL1_1(cbe.cacheL1_1, msg_GetSL1_1.src);
          msg_GetS_AckL1_1 := RespL1_1(adr,GetS_AckL1_1,m,msg_GetSL1_1.src,cbe.cl);
          cbe.cl := msg_GetS_AckL1_1.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutSL1_1 := RequestL1_1(adr,PutSL1_1,m,m);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutSL1_1.src);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, msg_PutSL1_1.src);
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            cbe.proxy_msg := inmsg;
            msg := RespL1_2(adr,GetS_AckL1_2,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            cbe.proxy_msg := inmsg;
            msg := RespL1_2(adr,GetS_AckL1_2,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
        
        case PutEL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
        
        case PutML1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          if !(cbe.ownerL1_1 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
          if (cbe.ownerL1_1 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
        
        case PutML1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutSL1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, inmsg.src);
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
        
        case PutSL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_M__C__I:
      switch inmsg.mtype
        case GetML1_1:
          msg_GetML1_2 := RequestL1_2(adr,GetML1_2,m,m);
          cbe.acksReceivedL1_2 := 0;
          msg_GetM_Ack_ADL1_2 := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,msg_GetML1_2.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
          cbe.ownerL1_2 := msg_GetML1_2.src;
          cbe.cl := msg_GetM_Ack_ADL1_2.cl;
          cbe.acksExpectedL1_2 := msg_GetM_Ack_ADL1_2.acksExpectedL1_2;
          if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
          if (cbe.ownerL1_2 = msg_PutML1_2.src) then
          cbe.cl := msg_PutML1_2.cl;
          cbe.proxy_msg := inmsg;
          msg := RequestL1_1(adr,Fwd_GetML1_1,cbe.proxy_msg.src,cbe.ownerL1_1);
          Send_fwd(msg, m);
          cbe.ownerL1_1 := cbe.proxy_msg.src;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_M__C__I;
          return true;
          endif;
          endif;
        
        case GetML1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          msg := RequestL1_1(adr,Fwd_GetML1_1,msg_GetML1_1.src,cbe.ownerL1_1);
          Send_fwd(msg, m);
          cbe.ownerL1_1 := msg_GetML1_1.src;
          cbe.proxy_msg := inmsg;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetML1_2dM_x_pI_store__C__I;
          return true;
        
        case GetSL1_1:
          msg_GetSL1_2 := RequestL1_2(adr,GetSL1_2,m,m);
          msg_GetM_Ack_DL1_2 := RespL1_2(adr,GetM_Ack_DL1_2,m,msg_GetSL1_2.src,cbe.cl);
          cbe.ownerL1_2 := msg_GetSL1_2.src;
          cbe.cl := msg_GetM_Ack_DL1_2.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutEL1_2 := AckL1_2(adr,PutEL1_2,m,m);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutEL1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutEL1_2.src);
          if (cbe.ownerL1_2 = msg_PutEL1_2.src) then
          cbe.proxy_msg := inmsg;
          msg := RequestL1_1(adr,Fwd_GetSL1_1,cbe.proxy_msg.src,cbe.ownerL1_1);
          Send_fwd(msg, m);
          AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
          AddElement_cacheL1_1(cbe.cacheL1_1, cbe.ownerL1_1);
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetSL1_1M_GetS__C__I;
          return true;
          endif;
        
        case GetSL1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          msg := RequestL1_1(adr,Fwd_GetML1_1,msg_GetML1_1.src,cbe.ownerL1_1);
          Send_fwd(msg, m);
          cbe.ownerL1_1 := msg_GetML1_1.src;
          cbe.proxy_msg := inmsg;
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_GetSL1_2dM_x_pI_store__C__I;
          return true;
        
        case PutEL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_M__C__I;
            return true;
          endif;
          if (cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_M__C__I;
            return true;
          endif;
        
        case PutML1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          if !(cbe.ownerL1_1 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_M__C__I;
            return true;
          endif;
          if (cbe.ownerL1_1 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutML1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (cbe.ownerL1_2 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_M__C__I;
            return true;
          endif;
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_M__C__I;
            return true;
          endif;
        
        case PutSL1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          if !(cbe.ownerL1_1 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_M__C__I;
            return true;
          endif;
          if (cbe.ownerL1_1 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutSL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_M__C__I;
            return true;
          endif;
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_M__C__I;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_S__C__I:
      switch inmsg.mtype
        case GetML1_1:
          msg_GetML1_2 := RequestL1_2(adr,GetML1_2,m,m);
          cbe.acksReceivedL1_2 := 0;
          msg_GetM_Ack_ADL1_2 := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,msg_GetML1_2.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
          cbe.ownerL1_2 := msg_GetML1_2.src;
          cbe.cl := msg_GetM_Ack_ADL1_2.cl;
          cbe.acksExpectedL1_2 := msg_GetM_Ack_ADL1_2.acksExpectedL1_2;
          if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
          Set_perm(store, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
          if (cbe.ownerL1_2 = msg_PutML1_2.src) then
          cbe.cl := msg_PutML1_2.cl;
          cbe.proxy_msg := inmsg;
          if (IsElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src)) then
            RemoveElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
              msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
              Send_resp(msg, m);
              cbe.ownerL1_1 := cbe.proxy_msg.src;
              ClearVector_cacheL1_1(cbe.cacheL1_1);
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_M__C__I;
              return true;
            endif;
            if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
              msg := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
              Send_resp(msg, m);
              msg := AckL1_1(adr,InvL1_1,cbe.proxy_msg.src,cbe.proxy_msg.src);
              Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
              cbe.ownerL1_1 := cbe.proxy_msg.src;
              ClearVector_cacheL1_1(cbe.cacheL1_1);
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_M__C__I;
              return true;
            endif;
          endif;
          if !(IsElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src)) then
            if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
              msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
              Send_resp(msg, m);
              cbe.ownerL1_1 := cbe.proxy_msg.src;
              ClearVector_cacheL1_1(cbe.cacheL1_1);
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_M__C__I;
              return true;
            endif;
            if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
              msg := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
              Send_resp(msg, m);
              msg := AckL1_1(adr,InvL1_1,cbe.proxy_msg.src,cbe.proxy_msg.src);
              Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
              cbe.ownerL1_1 := cbe.proxy_msg.src;
              ClearVector_cacheL1_1(cbe.cacheL1_1);
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_M__C__I;
              return true;
            endif;
          endif;
          endif;
          endif;
        
        case GetML1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          if (IsElement_cacheL1_1(cbe.cacheL1_1, msg_GetML1_1.src)) then
            RemoveElement_cacheL1_1(cbe.cacheL1_1, msg_GetML1_1.src);
            if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            msg_GetM_Ack_ADL1_1 := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,msg_GetML1_1.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
            msg := AckL1_1(adr,InvL1_1,msg_GetML1_1.src,msg_GetML1_1.src);
            Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
            cbe.ownerL1_1 := msg_GetML1_1.src;
            ClearVector_cacheL1_1(cbe.cacheL1_1);
            cbe.cl := msg_GetM_Ack_ADL1_1.cl;
            cbe.acksExpectedL1_1 := msg_GetM_Ack_ADL1_1.acksExpectedL1_1;
            if (cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
              msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
              if (cbe.ownerL1_1 = msg_PutML1_1.src) then
              cbe.cl := msg_PutML1_1.cl;
              cbe.proxy_msg := inmsg;
              msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
              Send_resp(msg, m);
              cbe.ownerL1_2 := cbe.proxy_msg.src;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_I__C__M;
              return true;
              endif;
            endif;
            if !(cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__I;
              return true;
            endif;
            endif;
          endif;
          if !(IsElement_cacheL1_1(cbe.cacheL1_1, msg_GetML1_1.src)) then
            if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            msg_GetM_Ack_ADL1_1 := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,msg_GetML1_1.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
            msg := AckL1_1(adr,InvL1_1,msg_GetML1_1.src,msg_GetML1_1.src);
            Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
            cbe.ownerL1_1 := msg_GetML1_1.src;
            ClearVector_cacheL1_1(cbe.cacheL1_1);
            cbe.cl := msg_GetM_Ack_ADL1_1.cl;
            cbe.acksExpectedL1_1 := msg_GetM_Ack_ADL1_1.acksExpectedL1_1;
            if (cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
              msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
              if (cbe.ownerL1_1 = msg_PutML1_1.src) then
              cbe.cl := msg_PutML1_1.cl;
              cbe.proxy_msg := inmsg;
              msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
              Send_resp(msg, m);
              cbe.ownerL1_2 := cbe.proxy_msg.src;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_I__C__M;
              return true;
              endif;
            endif;
            if !(cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__I;
              return true;
            endif;
            endif;
          endif;
        
        case GetSL1_1:
          msg_GetSL1_2 := RequestL1_2(adr,GetSL1_2,m,m);
          msg_GetM_Ack_DL1_2 := RespL1_2(adr,GetM_Ack_DL1_2,m,msg_GetSL1_2.src,cbe.cl);
          cbe.ownerL1_2 := msg_GetSL1_2.src;
          cbe.cl := msg_GetM_Ack_DL1_2.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutEL1_2 := AckL1_2(adr,PutEL1_2,m,m);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutEL1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutEL1_2.src);
          if (cbe.ownerL1_2 = msg_PutEL1_2.src) then
          cbe.proxy_msg := inmsg;
          AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
          msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
          Send_resp(msg, m);
          Clear_perm(adr, m);
          cbe.State := directoryL1_1_S__C__I;
          return true;
          endif;
        
        case GetSL1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          if !(IsElement_cacheL1_1(cbe.cacheL1_1, msg_GetML1_1.src)) then
            if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            msg_GetM_Ack_ADL1_1 := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,msg_GetML1_1.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
            msg := AckL1_1(adr,InvL1_1,msg_GetML1_1.src,msg_GetML1_1.src);
            Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
            cbe.ownerL1_1 := msg_GetML1_1.src;
            ClearVector_cacheL1_1(cbe.cacheL1_1);
            cbe.cl := msg_GetM_Ack_ADL1_1.cl;
            cbe.acksExpectedL1_1 := msg_GetM_Ack_ADL1_1.acksExpectedL1_1;
            if (cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
              msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
              if (cbe.ownerL1_1 = msg_PutML1_1.src) then
              cbe.cl := msg_PutML1_1.cl;
              cbe.proxy_msg := inmsg;
              msg := RespL1_2(adr,GetM_Ack_DL1_2,m,cbe.proxy_msg.src,cbe.cl);
              Send_resp(msg, m);
              cbe.ownerL1_2 := cbe.proxy_msg.src;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_I__C__E;
              return true;
              endif;
            endif;
            if !(cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetSL1_2dM_x_pI_store_GetM_Ack_AD__C__I;
              return true;
            endif;
            endif;
          endif;
          if (IsElement_cacheL1_1(cbe.cacheL1_1, msg_GetML1_1.src)) then
            RemoveElement_cacheL1_1(cbe.cacheL1_1, msg_GetML1_1.src);
            if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            msg_GetM_Ack_ADL1_1 := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,msg_GetML1_1.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
            msg := AckL1_1(adr,InvL1_1,msg_GetML1_1.src,msg_GetML1_1.src);
            Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
            cbe.ownerL1_1 := msg_GetML1_1.src;
            ClearVector_cacheL1_1(cbe.cacheL1_1);
            cbe.cl := msg_GetM_Ack_ADL1_1.cl;
            cbe.acksExpectedL1_1 := msg_GetM_Ack_ADL1_1.acksExpectedL1_1;
            if (cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
              msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
              if (cbe.ownerL1_1 = msg_PutML1_1.src) then
              cbe.cl := msg_PutML1_1.cl;
              cbe.proxy_msg := inmsg;
              msg := RespL1_2(adr,GetM_Ack_DL1_2,m,cbe.proxy_msg.src,cbe.cl);
              Send_resp(msg, m);
              cbe.ownerL1_2 := cbe.proxy_msg.src;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_I__C__E;
              return true;
              endif;
            endif;
            if !(cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetSL1_2dM_x_pI_store_GetM_Ack_AD__C__I;
              return true;
            endif;
            endif;
          endif;
        
        case PutEL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
          if (cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
        
        case PutML1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, inmsg.src);
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
        
        case PutML1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (cbe.ownerL1_2 = inmsg.src) then
            cbe.cl := inmsg.cl;
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
          if !(cbe.ownerL1_2 = inmsg.src) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
        
        case PutSL1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, inmsg.src);
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__I;
            return true;
          endif;
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
        
        case PutSL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
        
        else return false;
      endswitch;
      
      case directoryL1_1_S__C__S:
      switch inmsg.mtype
        case GetML1_1:
          msg_GetML1_2 := RequestL1_2(adr,GetML1_2,m,m);
          cbe.acksReceivedL1_2 := 0;
          if (IsElement_cacheL1_2(cbe.cacheL1_2, msg_GetML1_2.src)) then
            RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_GetML1_2.src);
            msg_GetM_Ack_ADL1_2 := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,msg_GetML1_2.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
            msg := AckL1_2(adr,InvL1_2,msg_GetML1_2.src,msg_GetML1_2.src);
            Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
            cbe.ownerL1_2 := msg_GetML1_2.src;
            ClearVector_cacheL1_2(cbe.cacheL1_2);
            cbe.cl := msg_GetM_Ack_ADL1_2.cl;
            cbe.acksExpectedL1_2 := msg_GetM_Ack_ADL1_2.acksExpectedL1_2;
            if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
              msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
              RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
              if (cbe.ownerL1_2 = msg_PutML1_2.src) then
              cbe.cl := msg_PutML1_2.cl;
              cbe.proxy_msg := inmsg;
              if !(IsElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src)) then
                if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                  msg := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
                  Send_resp(msg, m);
                  msg := AckL1_1(adr,InvL1_1,cbe.proxy_msg.src,cbe.proxy_msg.src);
                  Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
                  cbe.ownerL1_1 := cbe.proxy_msg.src;
                  ClearVector_cacheL1_1(cbe.cacheL1_1);
                  Clear_perm(adr, m);
                  cbe.State := directoryL1_1_M__C__I;
                  return true;
                endif;
                if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                  msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
                  Send_resp(msg, m);
                  cbe.ownerL1_1 := cbe.proxy_msg.src;
                  ClearVector_cacheL1_1(cbe.cacheL1_1);
                  Clear_perm(adr, m);
                  cbe.State := directoryL1_1_M__C__I;
                  return true;
                endif;
              endif;
              if (IsElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src)) then
                RemoveElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
                if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                  msg := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
                  Send_resp(msg, m);
                  msg := AckL1_1(adr,InvL1_1,cbe.proxy_msg.src,cbe.proxy_msg.src);
                  Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
                  cbe.ownerL1_1 := cbe.proxy_msg.src;
                  ClearVector_cacheL1_1(cbe.cacheL1_1);
                  Clear_perm(adr, m);
                  cbe.State := directoryL1_1_M__C__I;
                  return true;
                endif;
                if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                  msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
                  Send_resp(msg, m);
                  cbe.ownerL1_1 := cbe.proxy_msg.src;
                  ClearVector_cacheL1_1(cbe.cacheL1_1);
                  Clear_perm(adr, m);
                  cbe.State := directoryL1_1_M__C__I;
                  return true;
                endif;
              endif;
              endif;
            endif;
            if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetML1_1S__C__dM_x_pI_store_GetM_Ack_AD;
              return true;
            endif;
          endif;
          if !(IsElement_cacheL1_2(cbe.cacheL1_2, msg_GetML1_2.src)) then
            msg_GetM_Ack_ADL1_2 := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,msg_GetML1_2.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
            msg := AckL1_2(adr,InvL1_2,msg_GetML1_2.src,msg_GetML1_2.src);
            Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
            cbe.ownerL1_2 := msg_GetML1_2.src;
            ClearVector_cacheL1_2(cbe.cacheL1_2);
            cbe.cl := msg_GetM_Ack_ADL1_2.cl;
            cbe.acksExpectedL1_2 := msg_GetM_Ack_ADL1_2.acksExpectedL1_2;
            if (cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_2 := RespL1_2(adr,PutML1_2,m,m,cbe.cl);
              msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutML1_2.src);
              RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutML1_2.src);
              if (cbe.ownerL1_2 = msg_PutML1_2.src) then
              cbe.cl := msg_PutML1_2.cl;
              cbe.proxy_msg := inmsg;
              if !(IsElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src)) then
                if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                  msg := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
                  Send_resp(msg, m);
                  msg := AckL1_1(adr,InvL1_1,cbe.proxy_msg.src,cbe.proxy_msg.src);
                  Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
                  cbe.ownerL1_1 := cbe.proxy_msg.src;
                  ClearVector_cacheL1_1(cbe.cacheL1_1);
                  Clear_perm(adr, m);
                  cbe.State := directoryL1_1_M__C__I;
                  return true;
                endif;
                if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                  msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
                  Send_resp(msg, m);
                  cbe.ownerL1_1 := cbe.proxy_msg.src;
                  ClearVector_cacheL1_1(cbe.cacheL1_1);
                  Clear_perm(adr, m);
                  cbe.State := directoryL1_1_M__C__I;
                  return true;
                endif;
              endif;
              if (IsElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src)) then
                RemoveElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
                if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                  msg := RespL1_1(adr,GetM_Ack_DL1_1,m,cbe.proxy_msg.src,cbe.cl);
                  Send_resp(msg, m);
                  cbe.ownerL1_1 := cbe.proxy_msg.src;
                  ClearVector_cacheL1_1(cbe.cacheL1_1);
                  Clear_perm(adr, m);
                  cbe.State := directoryL1_1_M__C__I;
                  return true;
                endif;
                if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
                  msg := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
                  Send_resp(msg, m);
                  msg := AckL1_1(adr,InvL1_1,cbe.proxy_msg.src,cbe.proxy_msg.src);
                  Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
                  cbe.ownerL1_1 := cbe.proxy_msg.src;
                  ClearVector_cacheL1_1(cbe.cacheL1_1);
                  Clear_perm(adr, m);
                  cbe.State := directoryL1_1_M__C__I;
                  return true;
                endif;
              endif;
              endif;
            endif;
            if !(cbe.acksExpectedL1_2 = cbe.acksReceivedL1_2) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetML1_1S__C__dM_x_pI_store_GetM_Ack_AD;
              return true;
            endif;
          endif;
        
        case GetML1_2:
          msg_GetML1_1 := RequestL1_1(adr,GetML1_1,m,m);
          cbe.acksReceivedL1_1 := 0;
          if !(IsElement_cacheL1_1(cbe.cacheL1_1, msg_GetML1_1.src)) then
            if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            msg_GetM_Ack_ADL1_1 := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,msg_GetML1_1.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
            msg := AckL1_1(adr,InvL1_1,msg_GetML1_1.src,msg_GetML1_1.src);
            Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
            cbe.ownerL1_1 := msg_GetML1_1.src;
            ClearVector_cacheL1_1(cbe.cacheL1_1);
            cbe.cl := msg_GetM_Ack_ADL1_1.cl;
            cbe.acksExpectedL1_1 := msg_GetM_Ack_ADL1_1.acksExpectedL1_1;
            if (cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
              msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
              if (cbe.ownerL1_1 = msg_PutML1_1.src) then
              cbe.cl := msg_PutML1_1.cl;
              cbe.proxy_msg := inmsg;
              if (IsElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src)) then
                RemoveElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
                msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
                Send_resp(msg, m);
                msg := AckL1_2(adr,InvL1_2,cbe.proxy_msg.src,cbe.proxy_msg.src);
                Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
                cbe.ownerL1_2 := cbe.proxy_msg.src;
                ClearVector_cacheL1_2(cbe.cacheL1_2);
                Clear_perm(adr, m);
                cbe.State := directoryL1_1_I__C__M;
                return true;
              endif;
              if !(IsElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src)) then
                msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
                Send_resp(msg, m);
                msg := AckL1_2(adr,InvL1_2,cbe.proxy_msg.src,cbe.proxy_msg.src);
                Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
                cbe.ownerL1_2 := cbe.proxy_msg.src;
                ClearVector_cacheL1_2(cbe.cacheL1_2);
                Clear_perm(adr, m);
                cbe.State := directoryL1_1_I__C__M;
                return true;
              endif;
              endif;
            endif;
            if !(cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__S;
              return true;
            endif;
            endif;
          endif;
          if (IsElement_cacheL1_1(cbe.cacheL1_1, msg_GetML1_1.src)) then
            RemoveElement_cacheL1_1(cbe.cacheL1_1, msg_GetML1_1.src);
            if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            msg_GetM_Ack_ADL1_1 := RespAckL1_1(adr,GetM_Ack_ADL1_1,m,msg_GetML1_1.src,cbe.cl,VectorCount_cacheL1_1(cbe.cacheL1_1));
            msg := AckL1_1(adr,InvL1_1,msg_GetML1_1.src,msg_GetML1_1.src);
            Multicast_fwd_v_cacheL1_1(msg, cbe.cacheL1_1, m);
            cbe.ownerL1_1 := msg_GetML1_1.src;
            ClearVector_cacheL1_1(cbe.cacheL1_1);
            cbe.cl := msg_GetM_Ack_ADL1_1.cl;
            cbe.acksExpectedL1_1 := msg_GetM_Ack_ADL1_1.acksExpectedL1_1;
            if !(cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              cbe.proxy_msg := inmsg;
              Clear_perm(adr, m);
              cbe.State := directoryL1_1_GetML1_2dM_x_pI_store_GetM_Ack_AD__C__S;
              return true;
            endif;
            if (cbe.acksExpectedL1_1 = cbe.acksReceivedL1_1) then
              Set_perm(store, adr, m);
              Serve_CPU(cbe.cl, adr, m);
              msg_PutML1_1 := RespL1_1(adr,PutML1_1,m,m,cbe.cl);
              msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutML1_1.src);
              if (cbe.ownerL1_1 = msg_PutML1_1.src) then
              cbe.cl := msg_PutML1_1.cl;
              cbe.proxy_msg := inmsg;
              if !(IsElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src)) then
                msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
                Send_resp(msg, m);
                msg := AckL1_2(adr,InvL1_2,cbe.proxy_msg.src,cbe.proxy_msg.src);
                Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
                cbe.ownerL1_2 := cbe.proxy_msg.src;
                ClearVector_cacheL1_2(cbe.cacheL1_2);
                Clear_perm(adr, m);
                cbe.State := directoryL1_1_I__C__M;
                return true;
              endif;
              if (IsElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src)) then
                RemoveElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
                msg := RespAckL1_2(adr,GetM_Ack_ADL1_2,m,cbe.proxy_msg.src,cbe.cl,VectorCount_cacheL1_2(cbe.cacheL1_2));
                Send_resp(msg, m);
                msg := AckL1_2(adr,InvL1_2,cbe.proxy_msg.src,cbe.proxy_msg.src);
                Multicast_fwd_v_cacheL1_2(msg, cbe.cacheL1_2, m);
                cbe.ownerL1_2 := cbe.proxy_msg.src;
                ClearVector_cacheL1_2(cbe.cacheL1_2);
                Clear_perm(adr, m);
                cbe.State := directoryL1_1_I__C__M;
                return true;
              endif;
              endif;
            endif;
            endif;
          endif;
        
        case GetSL1_1:
          msg_GetSL1_2 := RequestL1_2(adr,GetSL1_2,m,m);
          msg_GetS_AckL1_2 := RespL1_2(adr,GetS_AckL1_2,m,msg_GetSL1_2.src,cbe.cl);
          AddElement_cacheL1_2(cbe.cacheL1_2, msg_GetSL1_2.src);
          cbe.cl := msg_GetS_AckL1_2.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutSL1_2 := RequestL1_2(adr,PutSL1_2,m,m);
          msg_Put_AckL1_2 := AckL1_2(adr,Put_AckL1_2,m,msg_PutSL1_2.src);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, msg_PutSL1_2.src);
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            cbe.proxy_msg := inmsg;
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            cbe.proxy_msg := inmsg;
            AddElement_cacheL1_1(cbe.cacheL1_1, cbe.proxy_msg.src);
            msg := RespL1_1(adr,GetS_AckL1_1,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
        
        case GetSL1_2:
          msg_GetSL1_1 := RequestL1_1(adr,GetSL1_1,m,m);
          AddElement_cacheL1_1(cbe.cacheL1_1, msg_GetSL1_1.src);
          msg_GetS_AckL1_1 := RespL1_1(adr,GetS_AckL1_1,m,msg_GetSL1_1.src,cbe.cl);
          cbe.cl := msg_GetS_AckL1_1.cl;
          Set_perm(load, adr, m);
          Serve_CPU(cbe.cl, adr, m);
          msg_PutSL1_1 := RequestL1_1(adr,PutSL1_1,m,m);
          msg_Put_AckL1_1 := AckL1_1(adr,Put_AckL1_1,m,msg_PutSL1_1.src);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, msg_PutSL1_1.src);
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            cbe.proxy_msg := inmsg;
            msg := RespL1_2(adr,GetS_AckL1_2,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            cbe.proxy_msg := inmsg;
            msg := RespL1_2(adr,GetS_AckL1_2,m,cbe.proxy_msg.src,cbe.cl);
            Send_resp(msg, m);
            AddElement_cacheL1_2(cbe.cacheL1_2, cbe.proxy_msg.src);
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
        
        case PutEL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
        
        case PutML1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, inmsg.src);
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
        
        case PutML1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
        
        case PutSL1_1:
          msg := AckL1_1(adr,Put_AckL1_1,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_1(cbe.cacheL1_1, inmsg.src);
          if !(VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
          if (VectorCount_cacheL1_1(cbe.cacheL1_1) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_I__C__S;
            return true;
          endif;
        
        case PutSL1_2:
          msg := AckL1_2(adr,Put_AckL1_2,m,inmsg.src);
          Send_fwd(msg, m);
          RemoveElement_cacheL1_2(cbe.cacheL1_2, inmsg.src);
          if !(VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__S;
            return true;
          endif;
          if (VectorCount_cacheL1_2(cbe.cacheL1_2) = 0) then
            Clear_perm(adr, m);
            cbe.State := directoryL1_1_S__C__I;
            return true;
          endif;
        
        else return false;
      endswitch;
      
    endswitch;
    endalias;
    endalias;
    return false;
    end;
    

--Backend/Murphi/MurphiModular/GenResetFunc

  procedure System_Reset();
  begin
  Reset_perm();
  Reset_NET_();
  ResetMachine_();
  Litmus_CPU_Init();
  end;
  

--Backend/Murphi/MurphiModular/GenRules
  ----Backend/Murphi/MurphiModular/Rules/GenAccessRuleSet
    ruleset m:OBJSET_cacheL1_2 do
    ruleset adr:Address do
      alias cbe:i_cacheL1_2[m].cb[adr] do
    
      rule "cacheL1_2_E_evict"
        cbe.State = cacheL1_2_E & network_ready() 
      ==>
        FSM_Access_cacheL1_2_E_evict(adr, m);
        
      endrule;
    
      rule "cacheL1_2_M_evict"
        cbe.State = cacheL1_2_M & network_ready() 
      ==>
        FSM_Access_cacheL1_2_M_evict(adr, m);
        
      endrule;
    
      rule "cacheL1_2_S_evict"
        cbe.State = cacheL1_2_S & network_ready() 
      ==>
        FSM_Access_cacheL1_2_S_evict(adr, m);
        
      endrule;
    
    
      endalias;
    endruleset;
    endruleset;
    
  ----Backend/Murphi/MurphiModular/Rules/GenEventRuleSet
  ----Backend/Murphi/MurphiModular/Rules/GenCPULitmusRule
  
    /* RUN CPU */
    ruleset m:OBJSET_CPU do
      ruleset adr:Address do
          alias cpu: i_cpu[m] do
    
          rule "CPU_serve"
            cpu.active = true
          ==>
            Issue_CPU(i_cpu[m]);
          endrule;
    
          /* RULESET RESET CONDITION */
          rule "CPU_done"
            cpu.active = false
          ==>
            if Check_reset() then
              /* Evaluate invariants */
              Forbidden();
              /* Then perform reset */
              System_Reset();
            endif;
          endrule;
    
          endalias;
      endruleset;
    endruleset;
    
    
  
  ----Backend/Murphi/MurphiModular/Rules/GenNetworkRule
    ruleset dst:Machines do
        ruleset src: Machines do
            alias msg:fwd[dst][0] do
              rule "Receive fwd"
                cnt_fwd[dst] > 0
              ==>
            if IsMember(dst, OBJSET_directoryL1_1) then
              if FSM_MSG_directoryL1_1(msg, dst) then
                  Pop_fwd(dst, src);
              endif;
            elsif IsMember(dst, OBJSET_cacheL1_2) then
              if FSM_MSG_cacheL1_2(msg, dst) then
                  Pop_fwd(dst, src);
              endif;
            else error "unknown machine";
            endif;
    
              endrule;
            endalias;
        endruleset;
    endruleset;
    
    ruleset dst:Machines do
        ruleset src: Machines do
            alias msg:req[dst][0] do
              rule "Receive req"
                cnt_req[dst] > 0
              ==>
            if IsMember(dst, OBJSET_directoryL1_1) then
              if FSM_MSG_directoryL1_1(msg, dst) then
                  Pop_req(dst, src);
              endif;
            elsif IsMember(dst, OBJSET_cacheL1_2) then
              if FSM_MSG_cacheL1_2(msg, dst) then
                  Pop_req(dst, src);
              endif;
            else error "unknown machine";
            endif;
    
              endrule;
            endalias;
        endruleset;
    endruleset;
    
    ruleset dst:Machines do
        ruleset src: Machines do
            alias msg:resp[dst][0] do
              rule "Receive resp"
                cnt_resp[dst] > 0
              ==>
            if IsMember(dst, OBJSET_directoryL1_1) then
              if FSM_MSG_directoryL1_1(msg, dst) then
                  Pop_resp(dst, src);
              endif;
            elsif IsMember(dst, OBJSET_cacheL1_2) then
              if FSM_MSG_cacheL1_2(msg, dst) then
                  Pop_resp(dst, src);
              endif;
            else error "unknown machine";
            endif;
    
              endrule;
            endalias;
        endruleset;
    endruleset;
    

--Backend/Murphi/MurphiModular/GenStartStates

  startstate
    System_Reset();
  endstartstate;

--Backend/Murphi/MurphiModular/GenInvariant
