import React from 'react';
import styled from 'styled-components/macro';

import GlobalStyles from './GlobalStyles';
import { setColor, setFont, centerText } from './styles';

function App () {
	return (
		<React.Fragment>
			<StyledApp>
				<GlobalStyles />
				<h1>h1 heading roboto</h1>
				<StyledH2>h2 bigger bolder smarter lato</StyledH2>
				<h3>h3 yet another heading. roboto</h3>
				<StyledP>paragraph, header, aside, section, etc....... Lato</StyledP>
				<p>paragraph, header, aside, section, etc... Roboto</p>
			</StyledApp>
		</React.Fragment>
	);
}

export default App;

const StyledApp = styled.div`
	${centerText};
	background-color: ${setColor.bkgndMain};
`;

const StyledP = styled.p`${setFont.primary};`;

const StyledH2 = styled.h2`${setFont.primary};`;
