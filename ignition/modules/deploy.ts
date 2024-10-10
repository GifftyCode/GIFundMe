import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";


const FundingModule = buildModule("FundingModule", (m) => {

  const crowdFunding = m.contract("CrowdFunding", [5, 3600]);

  return { crowdFunding};
});

export default FundingModule;